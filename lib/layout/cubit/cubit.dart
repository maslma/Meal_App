// ignore_for_file: avoid_print
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mealpp/layout/cubit/states.dart';
import 'package:mealpp/modules/home_screen/views/home_Screen.dart';
import 'package:mealpp/modules/menu_screen/menu_Screen.dart';
import 'package:mealpp/modules/more_screen/more_screen.dart';
import 'package:mealpp/shard/components/constants.dart';
import '../../models/categories_model.dart';
import '../../models/product_model.dart';
import '../../models/user_model.dart';
import '../../modules/offers_Screen/offers_Screen.dart';
import '../../modules/profile_Screen/profile_screen.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class MealCubit extends Cubit<MealStates> {
  MealCubit() : super(InitiailMealState());

  static MealCubit get(context) => BlocProvider.of(context);

  late MealUserModel userModel;

  void getUserData() {
    emit(GetUserLoadingState());
    FirebaseFirestore.instance.collection('users').doc(uId).get().then((value) {
      userModel = MealUserModel.fromJson(value.data()!);
      emit(GetUserSuccessState());
    }).catchError((error) {
      emit(GetUserErrorState(error.toString()));
    });
  }

  int currentIndex = 2;
  List<Widget> screens = [
    const MenuScreen(),
    const OffersScreen(),
    const HomeScreen(),
    ProfileScreen(),
    const MoreScreen(),
  ];
  List<String> titles = [
    'Menu',
    'Lastst Offers',
    'Welcome to resturent',
    'Profile',
    'More'
  ];

  void changeCurrentIndex(int index) {
    currentIndex = index;
    emit(ChangeCurrentIndexState());
  }

  String dropDownValue = 'Current Location';

  void changedropDownValue(value) {
    dropDownValue = value;
    emit(ChangedropDownValueState());
  }

  File? profileImage;

  final ImagePicker picker = ImagePicker();

  Future getProfileImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      profileImage = File(pickedFile.path);
      emit(MealProfileImagePickedSuccessState());
    } else {
      print('No image selected');
      emit(MealProfileImagePickedErrorState());
    }
  }

  void uploadProfileImage({
    required String name,
    required String phone,
    required String address,
    // required String password,
  }) {
    emit(MealUserUpdateLoadingsState());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('users/${Uri.file(profileImage!.path).pathSegments.last}')
        .putFile(profileImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        // emit(SocialUploadProfileImageSuccessState());
        print(value);
        updateUser(
          name: name,
          phone: phone,
          image: value,
          address: address,
          // password: password
        );
      }).catchError((error) {
        emit(MealUploadProfileImageErrorState());
      });
    }).catchError((error) {
      emit(MealUploadProfileImageErrorState());
    });
  }

  void updateUser({
    required String name,
    required String phone,
    required String address,
    String? image,
  }) {
    MealUserModel model = MealUserModel(
      name: name,
      phone: phone,
      email: userModel.email,
      image: image ?? userModel.image,
      uId: userModel.uId,
      address: address,
    );

    FirebaseFirestore.instance
        .collection('users')
        .doc(userModel.uId)
        .update(model.toMap())
        .then((value) {
      getUserData();
    }).catchError((error) {
      emit(MealUserUpdateErrorsState());
    });
  }

  File? productImage;

  Future getProductImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      productImage = File(pickedFile.path);
      emit(MealProductImagePickedSuccessState());
    } else {
      print('No image selected');
      emit(MealProductImagePickedErrorState());
    }
  }

  void addProduct({
    String? productimage,
    required String productname,
    required String faverite,
    required String ratingcafe,
    required String typefood,
    required String description,
    required String price,
  }) {
    emit(MealCreateProductLoadingState());
    firebase_storage.FirebaseStorage.instance
        .ref()
        .child('product/${Uri.file(productImage!.path).pathSegments.last}')
        .putFile(productImage!)
        .then((value) {
      value.ref.getDownloadURL().then((value) {
        ProductModel model = ProductModel(
            productimage: value,
            productname: productname,
            faverite: faverite,
            ratingcafe: ratingcafe,
            typefood: typefood,
            description: description,
            price: price);

        FirebaseFirestore.instance
            .collection('product')
            .add(model.toMap())
            .then((value) {
          productImage = null;
          product = [];
          getProduct();
        });
        emit(MealCreateProductSuccessState());
      }).catchError((error) {});
    }).catchError((error) {
      emit(MealCreateProductErrorState());
    });
  }

  List<ProductModel> product = [];

  void getProduct() {
    FirebaseFirestore.instance.collection('product').get().then((value) {
      for (var element in value.docs) {
        product.add(ProductModel.fromJson(element.data()));
      }
      print(product);
      emit(MealGetProductSuccessState());
    }).catchError((error) {
      emit(MealGetProductErrorState(error.toString()));
    });
  }

  List<CategoruModel> category = [
    CategoruModel(image: 'assets/images/CategoryImage1.jpg', name: 'Offers'),
    CategoruModel(image: 'assets/images/CategoryImage2.jpg', name: 'Sri'),
    CategoruModel(image: 'assets/images/CategoryImage3.jpg', name: 'Italian'),
    CategoruModel(image: 'assets/images/CategoryImage4.jpg', name: 'Indian'),
    CategoruModel(image: 'assets/images/CategoryImage5.jpg', name: 'French'),
    CategoruModel(image: 'assets/images/CategoryImage6.jpg', name: 'German'),
    CategoruModel(image: 'assets/images/CategoryImage7.jpg', name: 'Asian'),
  ];


// final googleSignIn = GoogleSignIn();
// GoogleSignInAccount? _user;
// GoogleSignInAccount? get user => _user;
//
//
//   Future googleLogin()async
// {
//   final googleUser = await googleSignIn.signIn();
//   if(googleUser == null) return;
//   _user = googleUser;
//
//   final googleAuth = await googleUser.authentication;
//
//   final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken
//   );
//   await FirebaseAuth.instance.signInWithCredential(credential);
//
//  }

}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealpp/modules/meal_signup/cubit/state.dart';

import '../../../models/user_model.dart';


class MealSignUpCubit extends Cubit<MealSignUpStates> {

  MealSignUpCubit() : super(MealSignUpInitialState());

  static MealSignUpCubit get(context) => BlocProvider.of(context);



void userSignUp({
  required String name,
  required String email,
  required String password,
  required String phone,
  required String address,
})
{
emit(MealSignUpLoadingState());
FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
).then((value){
  userCreate(
    uId:value.user!.uid,
    name:name,
    address:address ,
    email:email,
    phone:phone,

  );
  }).catchError((error)
  {
    emit(MealSignUpErrorState(error.toString()));
  });
}

void userCreate({
  required String name,
  required String email,
  required String phone,
  required String uId,
  required String address,

})
{
  MealUserModel model = MealUserModel(
    uId: uId,
    name: name,
    email: email,
    phone: phone,
    address: address,
    image:'https://img.freepik.com/premium-photo/amazed-young-european-man-keeps-mouth-opened-has-eyes-popped-out-holds-breath-fromm-shock-wears-stereo-headphones-ears-listens-audio-track-radio-finds-out-surprising-news-poses-indoor_273609-60466.jpg?w=996'
  );

  FirebaseFirestore.instance.collection('users')
                             .doc(uId)
                             .set(model.toMap())
      .then((value)
  {
    emit(MealCreateUserSuccessState());
  }).catchError((error){
    emit(MealCreateUserErrorState(error.toString()));
  });

}

// IconData suffix = Icons.visibility_outlined;
// bool isPassword = true;
//
// void changePasswordVisibility (){
//   isPassword = !isPassword;
//   suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
//
//   emit(MealSignUpChangePasswordVisibilityState());
//
// }

}

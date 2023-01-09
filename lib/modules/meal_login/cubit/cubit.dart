import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealpp/modules/meal_login/cubit/state.dart';


class MealLoginCubit extends Cubit<MealLoginStates> {

  MealLoginCubit() : super(MealLoginInitialState());

  static MealLoginCubit get(context) => BlocProvider.of(context);


void userLogin({
  required String email,
  required String password,
})
{
emit(MealLoginLoadingState());
FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password,
).then((value){
      print(value.user!.email);
      print(value.user!.uid);
        emit(MealLoginSuccessState(value.user!.uid));
  }).catchError((error)
  {
    emit(MealLoginErrorState(error.toString()));
  });
}



}

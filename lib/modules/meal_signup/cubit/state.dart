abstract class MealSignUpStates{}

class MealSignUpInitialState extends MealSignUpStates{}
class MealSignUpLoadingState extends MealSignUpStates{}
class MealSignUpSuccessState extends MealSignUpStates{}
class MealSignUpErrorState extends MealSignUpStates{
  final String error;
  MealSignUpErrorState(this.error);
}
class MealCreateUserSuccessState extends MealSignUpStates{}
class MealCreateUserErrorState extends MealSignUpStates{
  final String error;
  MealCreateUserErrorState(this.error);
}
class MealSignUpChangePasswordVisibilityState extends MealSignUpStates{}

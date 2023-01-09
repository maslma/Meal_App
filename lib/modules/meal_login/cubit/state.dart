abstract class MealLoginStates{}

class MealLoginInitialState extends MealLoginStates{}
class MealLoginLoadingState extends MealLoginStates{}
class MealLoginSuccessState extends MealLoginStates{
  final String uId;
  MealLoginSuccessState(this.uId);
}
class MealLoginErrorState extends MealLoginStates{
  final String error;
  MealLoginErrorState(this.error);
}
class MealChangePasswordVisibilityState extends MealLoginStates{}

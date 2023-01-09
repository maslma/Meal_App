abstract class MealStates {}

class InitiailMealState extends MealStates{}

class ChangeCurrentIndexState extends MealStates{}

class ChangedropDownValueState extends MealStates{}

class GetUserLoadingState extends MealStates {}
class GetUserSuccessState extends MealStates {}
class GetUserErrorState extends MealStates
{
  final String error;
  GetUserErrorState(this.error);
}
class MealProfileImagePickedSuccessState extends MealStates{}
class MealProfileImagePickedErrorState extends MealStates{}

class MealUploadProfileImageSuccessState extends MealStates{}
class MealUploadProfileImageErrorState extends MealStates{}

class MealUserUpdateLoadingsState extends MealStates{}
class MealUserUpdateErrorsState extends MealStates{}
// Add Product
class MealCreateProductLoadingState extends MealStates{}
class MealCreateProductSuccessState extends MealStates{}
class MealCreateProductErrorState extends MealStates{}

class MealProductImagePickedSuccessState extends MealStates{}
class MealProductImagePickedErrorState extends MealStates{}


class MealGetProductLoadingState extends MealStates {}
class MealGetProductSuccessState extends MealStates {}
class MealGetProductErrorState extends MealStates
{
  final String error;
  MealGetProductErrorState(this.error);
}
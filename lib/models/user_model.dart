class MealUserModel {
  String? uId;
  String? name;
  String? email;
  String? phone;
  String? address;
  String? image;

  MealUserModel({
    this.uId,
    this.name,
    this.email,
    this.phone,
    this.address,
    this.image,

  });

  MealUserModel.fromJson(Map<String,dynamic> json)
  {
    uId= json['uId'];
    name= json['name'];
    email= json['email'];
    phone= json['phone'];
    address= json['address'];
    image= json['image'];
    // password= json['password'];
  }

  Map<String,dynamic> toMap()
  {
    return{
      'uId' : uId,
      'name' : name,
      'email' : email,
      'phone' : phone,
      'address' : address,
      'image' : image,
      // 'password' : password
    };
  }
}
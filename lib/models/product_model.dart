class ProductModel{
  String? productimage;
  String? productname;
  String? faverite;
  String? ratingcafe;
  String? typefood;
  String? description;
  String? price;

  ProductModel({
    this.productimage,
    this.productname,
    this.faverite,
    this.ratingcafe,
    this.typefood,
    this.description,
    this.price
});
  ProductModel.fromJson(Map<String,dynamic> json)
  {
    productimage= json['productimage'];
    productname= json['productname'];
    faverite= json['faverite'];
    ratingcafe= json['ratingcafe'];
    typefood= json['typefood'];
    description= json['description'];
    price= json['price'];

  }
  Map<String,dynamic> toMap()
  {
    return{
      'productimage' : productimage,
      'productname' : productname,
      'faverite' : faverite,
      'ratingcafe' : ratingcafe,
      'typefood' : typefood,
      'description' : description,
      'price' : price,
    };
  }

}
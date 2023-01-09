class BoardingModel {
  final String? image;
  final String? title;
  final String? desc;

  BoardingModel({
     this.image,
     this.title,
     this.desc
  });

  static List<BoardingModel> boarding =[
  BoardingModel(
  image:'assets/images/onboarding1.jpg',
  title:'Find Food You Love',
  desc:'Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep',
  ),
  BoardingModel(
  image:'assets/images/onboarding2.jpg',
  title:'Fast Delivery',
  desc:'Fast food delivery to your home, office\nwherever you are',

  ),
  BoardingModel(
  image:'assets/images/onboarding3.jpg',
  title:'Live Tracking',
  desc:'Real time tracking of your food on the app\nonce you placed the order ',
  ),
  ];
}


import 'package:flutter/material.dart';
import 'package:mealpp/models/product_model.dart';



class product_Screen extends StatelessWidget {

  ProductModel model;
  product_Screen(this.model, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('${model.productimage}'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 45.0,
                      horizontal: 15
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: ()
                        {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 270,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${model.productname}',
                            style: const TextStyle(
                              fontSize: 25,

                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color:Colors.amber,
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color:Colors.amber,
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color:Colors.amber,
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color:Colors.amber,
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                color:Colors.amber,
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                          Text(
                            '${model.faverite} Star Ratings',
                            style:const TextStyle(
                                fontSize: 12,
                                color: Colors.amber
                            ) ,
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'Description',
                            style:TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ) ,
                          ),
                          const SizedBox(height: 15),
                          Text(
                            '${model.description} .',
                            style:const TextStyle(
                              fontSize: 12,
                              height: 1.2,
                            ) ,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              height: 1,
                              color: Colors.grey[400],
                            ),
                          ),
                          const Text(
                            'Customize your Order',
                            style:TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ) ,
                          ),
                          const SizedBox(height: 5),
                          Container(
                            height: 60,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          const SizedBox(height: 15),
                          Container(
                            height: 60,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(15)
                            ),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              const Text(
                                'Number of Portions',
                                style:TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ) ,
                              ),
                              const Spacer(),
                              Container(
                                width:65,
                                height:40.0 ,
                                clipBehavior:Clip.antiAliasWithSaveLayer,
                                decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(40.0),
                                ) ,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:MaterialStateProperty.all(Colors.red),
                                  ),
                                  onPressed: (){},
                                  child: const Icon(
                                      Icons.remove
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                  height: 40,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.red,  // red as border color
                                          width: 2
                                      ),
                                      borderRadius: BorderRadius.circular(40)
                                  ),
                                  child: const Center(child: Text("2"))
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width:65,
                                height:40.0 ,
                                clipBehavior:Clip.antiAliasWithSaveLayer,
                                decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(40.0),
                                ) ,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor:MaterialStateProperty.all(Colors.red),
                                  ),
                                  onPressed: (){},
                                  child: const Icon(
                                      Icons.add
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                ),
                Positioned(
                  right: 30,
                  top: 240,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4, // soften the shadow
                          offset: Offset(
                            0, // Move to right 10  horizontally
                            5, // Move to bottom 10 Vertically

                          ),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 350,
                  right: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Rs. ${model.price}',
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const Text(
                        '/ per Portion',
                        style: TextStyle(
                            fontSize: 11,
                            height: 0.4,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),

        );

  }
}

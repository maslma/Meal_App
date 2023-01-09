import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealpp/layout/cubit/cubit.dart';
import 'package:mealpp/layout/cubit/states.dart';
import 'package:mealpp/modules/type_menu/promotions_screen.dart';
import 'package:mealpp/shard/components/components.dart';
import '../type_menu/beverages_screen.dart';
import '../type_menu/desserts_screen.dart';
import '../type_menu/food_screen.dart';




class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealCubit,MealStates>(
        listener: (context,state){},
        builder: (context,state){
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    //height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: TextFormField(
                        //controller: messegeConroller,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Search food',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.search_rounded,size: 25)
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Stack(
                  children: [
                    Container(
                      height: 530,
                      width: 90,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: 350,
                            child: GestureDetector(
                              onTap: (){
                                navigateTo(context, FoodScreen());
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      height: 87,
                                      width: 300,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 10, // soften the shadow
                                            offset: Offset(
                                              0, // Move to right 10  horizontally
                                              5, // Move to bottom 10 Vertically

                                            ),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 70.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Food',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              '120 item',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Colors.grey,
                                      backgroundImage: AssetImage('assets/images/FoodImage.jpg'),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.8),
                                            blurRadius: 60.0, // soften the shadow
                                            offset: const Offset(
                                              -4, // Move to right 10  horizontally
                                              5, // Move to bottom 10 Vertically

                                            ),
                                          ),
                                        ],
                                      ),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 20,
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: 350,
                            child: GestureDetector(
                              onTap: (){
                                navigateTo(context, BeveragesScreen());
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      height: 87,
                                      width: 300,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 10, // soften the shadow
                                            offset: Offset(
                                              0, // Move to right 10  horizontally
                                              5, // Move to bottom 10 Vertically

                                            ),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 70.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Beverages',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              '220 item',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Colors.grey,
                                      backgroundImage: AssetImage('assets/images/BerveragesImage.jpg'),                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.8),
                                            blurRadius: 60.0, // soften the shadow
                                            offset: const Offset(
                                              -4, // Move to right 10  horizontally
                                              5, // Move to bottom 10 Vertically

                                            ),
                                          ),
                                        ],
                                      ),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 20,
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: 350,
                            child: GestureDetector(
                              onTap: (){
                                navigateTo(context, DessertsScreen());
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      height: 87,
                                      width: 300,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 10, // soften the shadow
                                            offset: Offset(
                                              0, // Move to right 10  horizontally
                                              5, // Move to bottom 10 Vertically

                                            ),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 70.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Desserts',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              '155 item',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Colors.grey,
                                      backgroundImage: AssetImage('assets/images/DessertsImage.jpg'),                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.8),
                                            blurRadius: 60.0, // soften the shadow
                                            offset: const Offset(
                                              -4, // Move to right 10  horizontally
                                              5, // Move to bottom 10 Vertically

                                            ),
                                          ),
                                        ],
                                      ),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 20,
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: SizedBox(
                            width: 350,
                            child: GestureDetector(
                              onTap: (){
                                navigateTo(context, const PromotionsScreen());
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: Container(
                                      height: 87,
                                      width: 300,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(10),
                                          topRight: Radius.circular(10),
                                          bottomLeft: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 10, // soften the shadow
                                            offset: Offset(
                                              0, // Move to right 10  horizontally
                                              5, // Move to bottom 10 Vertically

                                            ),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 70.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: const [
                                            Text(
                                              'Promotions',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20
                                              ),
                                            ),
                                            SizedBox(height: 3),
                                            Text(
                                              '25 item',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10
                                              ),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Colors.grey,
                                      backgroundImage: AssetImage('assets/images/PromotionsImage.jpg'),                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.8),
                                            blurRadius: 60.0, // soften the shadow
                                            offset: const Offset(
                                              -4, // Move to right 10  horizontally
                                              5, // Move to bottom 10 Vertically

                                            ),
                                          ),
                                        ],
                                      ),
                                      child: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        radius: 20,
                                        child: Icon(
                                          Icons.arrow_forward_ios,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
        },
    );
  }
}

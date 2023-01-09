import 'package:flutter/material.dart';
import 'package:mealpp/modules/add_product/add_product_screen.dart';
import 'package:mealpp/modules/meal_Notifications/meal_notifications_screen.dart';
import 'package:mealpp/modules/meal_about%20us/meal_aboutus_screen.dart';
import 'package:mealpp/modules/meal_inbox/meal_inbox_screen.dart';
import 'package:mealpp/modules/meal_myorder/meal_myorder_screen.dart';
import 'package:mealpp/modules/more_screen/more_screen/paymentdetails_screen.dart';
import '../../shard/components/components.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentDetailsScreen()));
            },
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 85,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[400],
                            child: const Icon(
                              Icons.monetization_on,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'Payment Details',
                            style: TextStyle(
                              fontSize: 20
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[300],
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.black54,
                    ),
                  ),

                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: ()
            {
              navigateTo(context,AddProductScreen());
            },
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 85,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[400],
                            child: const Icon(
                              Icons.add_box,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'Add product',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[300],
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.black54,
                    ),
                  ),

                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: ()
            {
              navigateTo(context,const MealMyOrderScreen());
            },
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 85,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[400],
                            child: const Icon(
                              Icons.shopping_bag,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'My Orders',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[300],
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.black54,
                    ),
                  ),

                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: ()
            {
              navigateTo(context, MealNotificationsScreen());
            },
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child:Container(
                      height: 85,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey[400],
                              child: const Icon(
                                Icons.notifications,
                                color: Colors.black,
                                size: 40,
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              'Notifications',
                              style: TextStyle(
                                  fontSize: 20
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.red,
                      child: Text(
                        '15',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.grey[300],
                      child: const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 25,
                          color: Colors.black54,
                        ),
                      ),

                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: ()
            {
              navigateTo(context,const MealInboxScreen());
            },
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 85,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[400],
                            child: const Icon(
                              Icons.email,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'Inbox',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[300],
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.black54,
                    ),
                  ),

                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: ()
            {
              navigateTo(context,const MealAboutUSScreen());
            },
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 85,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[400],
                            child: const Icon(
                              Icons.info_outline,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const SizedBox(width: 20),
                          const Text(
                            'About us',
                            style: TextStyle(
                                fontSize: 20
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.grey[300],
                  child: const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 25,
                      color: Colors.black54,
                    ),
                  ),

                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

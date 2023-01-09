import 'package:flutter/material.dart';
import 'package:mealpp/shard/components/components.dart';
import 'package:mealpp/shard/styles/colors.dart';
import '../meal_checkout/meal_checkout_screen.dart';

class MealMyOrderScreen extends StatelessWidget {
  const MealMyOrderScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon:const Icon(Icons.arrow_back_ios_new_outlined,) ,
        ) ,
        title:const Text(
            'My Order'
        ) ,
      ) ,
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment:CrossAxisAlignment.start ,
              mainAxisAlignment:MainAxisAlignment.start ,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child:const Image(
                    image: AssetImage(
                        'assets/images/onboarding1.jpg',
                    ),
                    width:110.0 ,
                    height:90.0 ,
                    fit: BoxFit.cover,

                  ),
                  ),
                const SizedBox(
                  width:10.0 ,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Text(
                        'King Burgers',
                      style:Theme.of(context).textTheme.headline6
                    ),
                    const SizedBox(
                      height:5.0 ,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.grade,
                          color:defaultColor ,
                          size:20.0 ,
                        ),
                        const Text('4.9',
                          style:TextStyle(
                            color:defaultColor,
                            fontSize:12.0
                          ) ,
                        ),
                        const SizedBox(
                          width:6.0 ,
                        ),
                        Text('(124 ratings)',
                          style:Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height:5.0 ,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width:6.0 ,
                        ),
                        Text('Burger',
                          style:Theme.of(context).textTheme.caption
                        ),
                        const SizedBox(
                          width:6.0 ,
                        ),
                        const Text(
                            '.',
                          style:TextStyle(
                            color:defaultColor,
                            fontWeight:FontWeight.bold

                          ) ,
                        ),
                        Text('Western Food',
                          style:Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height:5.0 ,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color:defaultColor ,
                          size:20.0 ,
                        ),
                        const SizedBox(
                          width:6.0 ,
                        ),
                        Text(
                          'No 03, 4th Lane, Newyork',
                          style:Theme.of(context).textTheme.caption ,
                        ),
                      ],
                    ),
                  ],
                ),

                  ],
                ),
            const SizedBox(
              height: 50.0,
            ),
            Row(
              children: [
                Text(
                  'Beef Burger x1',
                  style:Theme.of(context).textTheme.subtitle1 ,
                ),
                const Spacer(),
                const Text('\$16',
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            myDivider(),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  'Classic Burger x1',
                  style:Theme.of(context).textTheme.subtitle1 ,
                ),
                const Spacer(),
                const Text('\$14'),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            myDivider(),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  'Cheese Chicken Burger x1',
                  style:Theme.of(context).textTheme.subtitle1 ,
                ),
                const Spacer(),
                const Text('\$17'),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            myDivider(),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  'Chicken Legs Basket x1',
                  style:Theme.of(context).textTheme.subtitle1 ,
                ),
                const Spacer(),
                const Text('\$15'),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            myDivider(),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  'French Fries Large x1',
                  style:Theme.of(context).textTheme.subtitle1 ,
                ),
                const Spacer(),
                const Text('\$6'),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                const Text(
                  'Delivery Instrusctions',
                  style:TextStyle(
                    fontSize:16.0,
                    fontWeight:FontWeight.bold
                  ) ,
                ),
                const Spacer(),
                TextButton(
                    onPressed: ()
                    {
                      navigateTo(context,const MealMyOrderScreen());

                    },
                    child: Row(
                      children: const [
                        Icon(Icons.add,
                          color:defaultColor ,
                          size: 20.0,
                        ),
                        SizedBox(
                          width:8.0 ,
                        ),
                        Text('Add Nots',
                          style: TextStyle(
                              color:defaultColor
                          ),),
                      ],
                    )),
                // defaultTextButton(
                //   function: (){},
                //   icon:Icons.add,
                //   text:'Add Notes'
                // ),

              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const [
                Text(
                  'Sub Total',
                  style:TextStyle(
                    fontSize:16.0,
                    fontWeight:FontWeight.bold
                  ) ,
                ),
                Spacer(),
                Text(
                  '\$68',
                  style:TextStyle(
                    color:defaultColor,
                    fontSize:15.0 ,
                    fontWeight:FontWeight.bold
                  ) ,
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: const [
                Text(
                  'Delivery Cost',
                  style:TextStyle(
                    fontSize:16.0,
                    fontWeight:FontWeight.bold
                  ) ,
                ),
                Spacer(),
                Text(
                  '\$2',
                  style:TextStyle(
                    color:defaultColor,
                    fontSize:15.0 ,
                    fontWeight:FontWeight.bold
                  ) ,
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              children: const [
                Text(
                  'Total',
                  style:TextStyle(
                    fontSize:16.0,
                    fontWeight:FontWeight.bold
                  ) ,
                ),
                Spacer(),
                Text(
                  '\$70',
                  style:TextStyle(
                    color:defaultColor,
                    fontSize:20.0 ,
                    fontWeight:FontWeight.bold
                  ) ,
                ),
              ],
            ),
            const Spacer(),
            Container(
              width:double.infinity ,
              height:50.0 ,
              clipBehavior:Clip.antiAliasWithSaveLayer ,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(30.0),
              ) ,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.red),
                ),
                onPressed: ()
                {
                  navigateTo(context,const MealCheckoutScreen());

                },
                child: const Text('Checkout',
                  style:TextStyle(
                      fontSize: 20.0
                  ) ,
                ),
              ),
            ),
          ],
        ),
      ) ,

    );
  }
}

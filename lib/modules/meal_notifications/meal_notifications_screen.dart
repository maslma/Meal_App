import 'package:flutter/material.dart';
import 'package:mealpp/shard/styles/colors.dart';

class MealNotificationsScreen extends StatelessWidget {


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
          'Notifications'
        ) ,
        actions: [
          IconButton(
              onPressed: (){},
              icon:const Icon(Icons.shopping_cart_sharp))
        ],
      ) ,
      body:Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.start ,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline:TextBaseline.alphabetic ,
              children: [
                const Icon(Icons.circle_sharp,
                  color:defaultColor ,
                  size:15 ,
                ),
                const SizedBox(
                  width:30.0 ,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Text(
                      'Your orders has been picked up',
                      style:Theme.of(context).textTheme.subtitle1 ,
                    ),
                    const SizedBox(
                      height:5.0 ,
                    ),
                    Text(
                      'Now',
                      style:Theme.of(context).textTheme.bodyText1 ,
                    ),


                  ],
                ),
              ],
            ),
            const SizedBox(
              height:20.0 ,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.start ,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline:TextBaseline.alphabetic ,
              children: [
                const Icon(Icons.circle_sharp,
                  color:defaultColor ,
                  size:15 ,
                ),
                const SizedBox(
                  width:30.0 ,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Text(
                      'Your orders has been picked up',
                      style:Theme.of(context).textTheme.subtitle1 ,
                    ),
                    const SizedBox(
                      height:5.0 ,
                    ),
                    Text(
                      'Now',
                      style:Theme.of(context).textTheme.bodyText1 ,
                    ),


                  ],
                ),
              ],
            ),
            const SizedBox(
              height:20.0 ,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.start ,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline:TextBaseline.alphabetic ,
              children: [
                const Icon(Icons.circle_sharp,
                  color:defaultColor ,
                  size:15 ,
                ),
                const SizedBox(
                  width:30.0 ,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Text(
                      'Your orders has been picked up',
                      style:Theme.of(context).textTheme.subtitle1 ,
                    ),
                    const SizedBox(
                      height:5.0 ,
                    ),
                    Text(
                      'Now',
                      style:Theme.of(context).textTheme.bodyText1 ,
                    ),


                  ],
                ),
              ],
            ),
            const SizedBox(
              height:20.0 ,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.start ,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline:TextBaseline.alphabetic ,
              children: [
                const Icon(Icons.circle_sharp,
                  color:defaultColor ,
                  size:15 ,
                ),
                const SizedBox(
                  width:30.0 ,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Text(
                      'Your orders has been picked up',
                      style:Theme.of(context).textTheme.subtitle1 ,
                    ),
                    const SizedBox(
                      height:5.0 ,
                    ),
                    Text(
                      'Now',
                      style:Theme.of(context).textTheme.bodyText1 ,
                    ),


                  ],
                ),
              ],
            ),
          ],
        ),
      )
      // ListView.separated(
      //     itemBuilder:(context,index)=>Padding(
      //       padding: const EdgeInsets.all(30.0),
      //       child: Column(
      //         children: [
      //           Row(
      //             children: [
      //               Icon(Icons.circle_sharp,
      //                 color:defaultColor ,
      //                 size:18 ,
      //               ),
      //               SizedBox(
      //                 width:30.0 ,
      //               ),
      //               Column(
      //                 crossAxisAlignment:CrossAxisAlignment.start ,
      //                 children: [
      //                   Text(
      //                     'Your orders has been picked up',
      //                     style:Theme.of(context).textTheme.subtitle1 ,
      //                   ),
      //                   SizedBox(
      //                     height:5.0 ,
      //                   ),
      //                   Text(
      //                     'Now',
      //                     style:Theme.of(context).textTheme.bodyText1 ,
      //                   ),
      //
      //
      //                 ],
      //               ),
      //             ],
      //           ),
      //           // SizedBox(
      //           //   height:20.0 ,
      //           // ),
      //           // Row(
      //           //   children: [
      //           //     Icon(Icons.circle_sharp,
      //           //       color:defaultColor ,
      //           //       size:18 ,
      //           //     ),
      //           //     SizedBox(
      //           //       width:30.0 ,
      //           //     ),
      //           //     Column(
      //           //       crossAxisAlignment:CrossAxisAlignment.start ,
      //           //       children: [
      //           //         Text(
      //           //           'Your orders has been picked up',
      //           //           style:Theme.of(context).textTheme.subtitle1 ,
      //           //         ),
      //           //         SizedBox(
      //           //           height:5.0 ,
      //           //         ),
      //           //         Text(
      //           //           'Now',
      //           //           style:Theme.of(context).textTheme.bodyText1 ,
      //           //         ),
      //           //
      //           //
      //           //       ],
      //           //     ),
      //           //   ],
      //           // ),
      //           // SizedBox(
      //           //   height:20.0 ,
      //           // ),
      //           // Row(
      //           //   children: [
      //           //     Icon(Icons.circle_sharp,
      //           //       color:defaultColor ,
      //           //       size:18 ,
      //           //     ),
      //           //     SizedBox(
      //           //       width:30.0 ,
      //           //     ),
      //           //     Column(
      //           //       crossAxisAlignment:CrossAxisAlignment.start ,
      //           //       children: [
      //           //         Text(
      //           //           'Your orders has been picked up',
      //           //           style:Theme.of(context).textTheme.subtitle1 ,
      //           //         ),
      //           //         SizedBox(
      //           //           height:5.0 ,
      //           //         ),
      //           //         Text(
      //           //           'Now',
      //           //           style:Theme.of(context).textTheme.bodyText1 ,
      //           //         ),
      //           //
      //           //
      //           //       ],
      //           //     ),
      //           //   ],
      //           // ),
      //           // SizedBox(
      //           //   height:20.0 ,
      //           // ),
      //           // Row(
      //           //   children: [
      //           //     Icon(Icons.circle_sharp,
      //           //       color:defaultColor ,
      //           //       size:18 ,
      //           //     ),
      //           //     SizedBox(
      //           //       width:30.0 ,
      //           //     ),
      //           //     Column(
      //           //       crossAxisAlignment:CrossAxisAlignment.start ,
      //           //       children: [
      //           //         Text(
      //           //           'Your orders has been picked up',
      //           //           style:Theme.of(context).textTheme.subtitle1 ,
      //           //         ),
      //           //         SizedBox(
      //           //           height:5.0 ,
      //           //         ),
      //           //         Text(
      //           //           'Now',
      //           //           style:Theme.of(context).textTheme.bodyText1 ,
      //           //         ),
      //           //
      //           //
      //           //       ],
      //           //     ),
      //           //   ],
      //           // ),
      //         ],
      //       ),
      //     ),
      //     separatorBuilder:(context,index)=>SizedBox(
      //       height:0.0 ,
      //     ),
      //      itemCount: 7),
    );
  }

  // Widget buildItemNotifications (context)=>Column(
  //   children: [
  //     Row(
  //       children: [
  //         Icon(Icons.circle_sharp,
  //           color:defaultColor ,
  //           size:18 ,
  //         ),
  //         SizedBox(
  //           width:30.0 ,
  //         ),
  //         Column(
  //           crossAxisAlignment:CrossAxisAlignment.start ,
  //           children: [
  //             Text(
  //               'Your orders has been picked up',
  //               style:Theme.of(context).textTheme.subtitle1 ,
  //             ),
  //             SizedBox(
  //               height:5.0 ,
  //             ),
  //             Text(
  //               'Now',
  //               style:Theme.of(context).textTheme.bodyText1 ,
  //             ),
  //
  //
  //           ],
  //         ),
  //       ],
  //     ),
  //     SizedBox(
  //       height:20.0 ,
  //     ),
  //     Row(
  //       children: [
  //         Icon(Icons.circle_sharp,
  //           color:defaultColor ,
  //           size:18 ,
  //         ),
  //         SizedBox(
  //           width:30.0 ,
  //         ),
  //         Column(
  //           crossAxisAlignment:CrossAxisAlignment.start ,
  //           children: [
  //             Text(
  //               'Your orders has been picked up',
  //               style:Theme.of(context).textTheme.subtitle1 ,
  //             ),
  //             SizedBox(
  //               height:5.0 ,
  //             ),
  //             Text(
  //               'Now',
  //               style:Theme.of(context).textTheme.bodyText1 ,
  //             ),
  //
  //
  //           ],
  //         ),
  //       ],
  //     ),
  //     SizedBox(
  //       height:20.0 ,
  //     ),
  //     Row(
  //       children: [
  //         Icon(Icons.circle_sharp,
  //           color:defaultColor ,
  //           size:18 ,
  //         ),
  //         SizedBox(
  //           width:30.0 ,
  //         ),
  //         Column(
  //           crossAxisAlignment:CrossAxisAlignment.start ,
  //           children: [
  //             Text(
  //               'Your orders has been picked up',
  //               style:Theme.of(context).textTheme.subtitle1 ,
  //             ),
  //             SizedBox(
  //               height:5.0 ,
  //             ),
  //             Text(
  //               'Now',
  //               style:Theme.of(context).textTheme.bodyText1 ,
  //             ),
  //
  //
  //           ],
  //         ),
  //       ],
  //     ),
  //     SizedBox(
  //       height:20.0 ,
  //     ),
  //     Row(
  //       children: [
  //         Icon(Icons.circle_sharp,
  //           color:defaultColor ,
  //           size:18 ,
  //         ),
  //         SizedBox(
  //           width:30.0 ,
  //         ),
  //         Column(
  //           crossAxisAlignment:CrossAxisAlignment.start ,
  //           children: [
  //             Text(
  //               'Your orders has been picked up',
  //               style:Theme.of(context).textTheme.subtitle1 ,
  //             ),
  //             SizedBox(
  //               height:5.0 ,
  //             ),
  //             Text(
  //               'Now',
  //               style:Theme.of(context).textTheme.bodyText1 ,
  //             ),
  //
  //
  //           ],
  //         ),
  //       ],
  //     ),
  //   ],
  // );
}

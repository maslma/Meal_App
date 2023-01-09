import 'package:flutter/material.dart';
import '../../shard/styles/colors.dart';

class MealInboxScreen extends StatelessWidget {
  const MealInboxScreen({Key? key}) : super(key: key);


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
            'Inbox'
        ) ,
        actions: [
          IconButton(
              onPressed: (){},
              icon:const Icon(Icons.shopping_cart_sharp))
        ],
      ) ,
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline:TextBaseline.alphabetic ,
              children: [
                const Icon(Icons.circle_sharp,
                  color:defaultColor ,
                  size:15 ,
                ),
                const SizedBox(
                  width:14.0 ,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Row(
                      children: [
                        Text(
                          'MealMonkey Promotions',
                          style:Theme.of(context).textTheme.subtitle1 ,
                        ),
                        const SizedBox(
                          width:110.0 ,
                        ),
                        Text(
                          '6h My',
                          style:Theme.of(context).textTheme.caption ,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height:8.0 ,
                    ),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.start  ,
                      children: [
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur ',
                          style:TextStyle(
                            color:Colors.grey[600]
                          ) ,
                        ),
                        const SizedBox(
                          width:40.0 ,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical:10.0
                          ),
                          child: const Icon(
                              Icons.grade_outlined,
                            color: defaultColor,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height:20.0 ,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline:TextBaseline.alphabetic ,
              children: [
                const Icon(Icons.circle_sharp,
                  color:defaultColor ,
                  size:15 ,
                ),
                const SizedBox(
                  width:14.0 ,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Row(
                      children: [
                        Text(
                          'MealMonkey Promotions',
                          style:Theme.of(context).textTheme.subtitle1 ,
                        ),
                        const SizedBox(
                          width:110.0 ,
                        ),
                        Text(
                          '6h My',
                          style:Theme.of(context).textTheme.caption ,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height:8.0 ,
                    ),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.start  ,
                      children: [
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur ',
                          style:TextStyle(
                            color:Colors.grey[600]
                          ) ,
                        ),
                        const SizedBox(
                          width:40.0 ,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical:10.0
                          ),
                          child: const Icon(
                              Icons.grade_outlined,
                            color: defaultColor,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height:20.0 ,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline:TextBaseline.alphabetic ,
              children: [
                const Icon(Icons.circle_sharp,
                  color:defaultColor ,
                  size:15 ,
                ),
                const SizedBox(
                  width:14.0 ,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Row(
                      children: [
                        Text(
                          'MealMonkey Promotions',
                          style:Theme.of(context).textTheme.subtitle1 ,
                        ),
                        const SizedBox(
                          width:110.0 ,
                        ),
                        Text(
                          '6h My',
                          style:Theme.of(context).textTheme.caption ,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height:8.0 ,
                    ),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.start  ,
                      children: [
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur ',
                          style:TextStyle(
                            color:Colors.grey[600]
                          ) ,
                        ),
                        const SizedBox(
                          width:40.0 ,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical:10.0
                          ),
                          child: const Icon(
                              Icons.grade_outlined,
                            color: defaultColor,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height:20.0 ,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline:TextBaseline.alphabetic ,
              children: [
                const Icon(Icons.circle_sharp,
                  color:defaultColor ,
                  size:15 ,
                ),
                const SizedBox(
                  width:14.0 ,
                ),
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Row(
                      children: [
                        Text(
                          'MealMonkey Promotions',
                          style:Theme.of(context).textTheme.subtitle1 ,
                        ),
                        const SizedBox(
                          width:110.0 ,
                        ),
                        Text(
                          '6h My',
                          style:Theme.of(context).textTheme.caption ,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height:8.0 ,
                    ),
                    Row(
                      crossAxisAlignment:CrossAxisAlignment.start  ,
                      children: [
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur ',
                          style:TextStyle(
                            color:Colors.grey[600]
                          ) ,
                        ),
                        const SizedBox(
                          width:40.0 ,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical:10.0
                          ),
                          child: const Icon(
                              Icons.grade_outlined,
                            color: defaultColor,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ) ,

    );
  }
}

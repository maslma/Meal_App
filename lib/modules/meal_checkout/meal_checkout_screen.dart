import 'package:flutter/material.dart';
import 'package:mealpp/shard/components/components.dart';
import '../../shard/styles/colors.dart';

class MealCheckoutScreen extends StatelessWidget {
  const MealCheckoutScreen({Key? key}) : super(key: key);


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
            'Checkout'
        ) ,
      ) ,
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start ,
          mainAxisAlignment:MainAxisAlignment.start ,
          children: [
            const Text(
              'Delivery Address'
            ),
            const SizedBox(
              height:15.0 ,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  mainAxisAlignment:MainAxisAlignment.start ,
                  children: [
                    Text('653 Nostrand Ave.,',
                    style:Theme.of(context).textTheme.bodyText1 ,
                    ),
                    Text('Brooklyn, NY 11216',
                      style:Theme.of(context).textTheme.bodyText1 ,
                    ),
                  ],
                ),
                const Spacer(),
                defaultTextButton(
                    function: (){},
                    text: 'Change'),
              ],
            ),
            const SizedBox(
              height:25.0 ,
            ),
            Row(
              children: [
                const Text(
                    'Payment method'
                ),
                const Spacer(),
                TextButton(
                    onPressed: ()
                    {
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled:true ,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                                ),
                                builder:(context)=> const AddCard());
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
                //     function: ()
                //     {
                //       showModalBottomSheet(
                //           context: context,
                //           isScrollControlled:true ,
                //           shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                //           ),
                //           builder:(context)=> AddCard());
                //     },
                //     icon:Icons.add,
                //     text:'Add Card'
                // ),

              ],
            ),
          ],
        ),
      ) ,
    );
  }
}

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      clipBehavior:Clip.antiAliasWithSaveLayer,
      decoration:BoxDecoration(
        borderRadius:BorderRadius.circular(60.0),
      ) ,
      child: Container(
          decoration:const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0))),
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            mainAxisSize:MainAxisSize.min ,
            children: [
              const SizedBox(
                  height: 20),
              Row(
                children: [
                  const Text('Add Credit/Debit Card',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                      },
                    icon: const Icon(
                Icons.close
            ),
                  ),
                ],
              ),
              const SizedBox(
                height:10 ,
              ),
              myDivider(),
              const SizedBox(
                height: 15.0,
              ),
              Container(
             height: 60,
             decoration: BoxDecoration(
                 color: Colors.grey[100],
                 borderRadius: BorderRadius.circular(50)
             ),
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: TextFormField(
                 keyboardType: TextInputType.number,
                 decoration: InputDecoration(
                   label: const Text(
                       'Card Number'
                   ),
                   labelStyle: TextStyle(color: Colors.grey[500]),
                   border: InputBorder.none,
                 ),
                 maxLines: 1,
               ),
             ),
           ),
              const SizedBox(
                  height: 20),
              Row(
                children: [
                  const Text(
                    'Expiry',
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: const Text(
                              'MM'),
                          labelStyle: TextStyle(color: Colors.grey[500]),
                          border: InputBorder.none,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 15),
                  Container(
                    height: 60,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: const Text(
                              'YY'),
                          labelStyle: TextStyle(color: Colors.grey[500]),
                          border: InputBorder.none,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                  height: 20),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: const Text(
                          'Security Code'
                      ),
                      labelStyle: TextStyle(color: Colors.grey[500]),
                      border: InputBorder.none,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(
                  height: 15),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: const Text(
                          'First Name'
                      ),
                      labelStyle: TextStyle(color: Colors.grey[500]),
                      border: InputBorder.none,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(
                  height: 15),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      label: const Text(
                          'Last Name'
                      ),
                      labelStyle: TextStyle(color: Colors.grey[500]),
                      border: InputBorder.none,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
              const SizedBox(
                  height: 15),
              Row(
                children: [
                  const Text(
                      'You can remove this card at anytime '
                  ), const Spacer(),
                  Switch(
                      value: false,
                      onChanged: (value){}
                  ),
                ],
              ),
               const SizedBox(
                   height: 15),
              Container(
                width:double.infinity,
                height:50.0 ,
                clipBehavior:Clip.antiAliasWithSaveLayer,
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(40.0),
                ) ,
                child: ElevatedButton(
               style: ButtonStyle(
                 backgroundColor:MaterialStateProperty.all(Colors.red),
               ),
               onPressed: (){},
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: const [
                   Icon(
                     Icons.add,
                     size: 35,
                   ),
                   SizedBox(
                       width: 20),
                   Text(
                     'Add Card',
                     style:TextStyle(
                         fontSize: 18.0
                     ) ,
                   ),
                 ],
               ),
             ),
           ),
              const SizedBox(
                  height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
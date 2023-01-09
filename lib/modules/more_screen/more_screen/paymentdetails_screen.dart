import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealpp/layout/cubit/cubit.dart';
import 'package:mealpp/layout/cubit/states.dart';

import '../../../shard/components/components.dart';



class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealCubit,MealStates>(
      listener: (context,state){},
      builder: (context,state){
        return  Scaffold(
          appBar: AppBar(
            leading: Row(
              children: [
                const SizedBox(width: 8),
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            title: const Text(
              'Payment Detail'
            ),
            titleSpacing: 0,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                child: Text(
                  'Customize your payment method',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
                child: Container(
                  height: 1,
                  color: Colors.grey[300],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                color: Colors.grey[300],
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      blurRadius: 25, // soften the shadow
                      offset: const Offset(
                        0, // Move to right 10  horizontally
                        30, // Move to bottom 10 Vertically

                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 90),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Container(
                  width:double.infinity,
                  height:60.0 ,
                  clipBehavior:Clip.antiAliasWithSaveLayer,
                  decoration:BoxDecoration(
                    borderRadius:BorderRadius.circular(60.0),
                  ) ,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.red),
                    ),
                    onPressed: (){
                      showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(30.0)),
                          ),
                          isScrollControlled: true,
                          context: context,
                          builder: (context)=>Container(
                              decoration:const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(height: 20),
                                    Row(
                                      children: [
                                        const Text(
                                            'Add Credit/Debit Card',
                                          style: TextStyle(
                                            fontSize: 18
                                          ),
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
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 10),
                                      child: Container(
                                        height: 1,
                                        color: Colors.grey[400],

                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: TextFormField(
                                          //controller: passwordController,
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
                                    const SizedBox(height: 30),
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
                                              //controller: passwordController,
                                              keyboardType: TextInputType.number,
                                              decoration: InputDecoration(
                                                label: const Text(
                                                    'MM'
                                                ),
                                                labelStyle: TextStyle(color: Colors.grey[500]),
                                                border: InputBorder.none,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 15),
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
                                              //controller: passwordController,
                                              keyboardType: TextInputType.number,
                                              decoration: InputDecoration(
                                                label: const Text(
                                                    'YY'
                                                ),
                                                labelStyle: TextStyle(color: Colors.grey[500]),
                                                border: InputBorder.none,
                                              ),
                                              maxLines: 1,
                                            ),
                                          ),
                                        ),

                                      ],
                                    ),
                                    const SizedBox(height: 30),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: TextFormField(
                                          //controller: passwordController,
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
                                    const SizedBox(height: 20),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: TextFormField(
                                          //controller: passwordController,
                                          keyboardType: TextInputType.name,
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
                                    const SizedBox(height: 20),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                        child: TextFormField(
                                          //controller: passwordController,
                                          keyboardType: TextInputType.name,
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
                                    const SizedBox(height: 20),
                                    Row(
                                      children: [
                                        const Text(
                                          'You can remove this card at anytime '
                                        ),
                                        const Spacer(),
                                        Switch(
                                            value: false,
                                            onChanged: (value){}
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 20),
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
                                            SizedBox(width: 20),
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
                                    const SizedBox(height: 20),






                                  ],
                                ),
                              ),
                          ),
                      );
                    },
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add,
                          size: 35,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Add Another Credit/Debit Card',
                          style:TextStyle(
                              fontSize: 18.0
                          ) ,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: defaultBottomNavBar(
            context: context,
            index: MealCubit.get(context).currentIndex,
            onTap: (index){
              MealCubit.get(context).changeCurrentIndex(index);
            },
          ),
        );
      },
    );
  }
}

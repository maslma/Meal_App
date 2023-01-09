// ignore_for_file: must_be_immutable

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealpp/layout/meal_layout/meal_layout.dart';
import '../../../shard/components/components.dart';
import '../../../shard/styles/colors.dart';
import '../cubit/cubit.dart';
import '../cubit/state.dart';

class MealSignUpScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  var passwordController = TextEditingController();

  MealSignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
        create: (BuildContext context)=>MealSignUpCubit(),
        child: BlocConsumer<MealSignUpCubit,MealSignUpStates>(
        listener: (context,state)
        {
          if(state is MealCreateUserSuccessState)
          {
            navigateAndFinish(context, const MealLayoutScreen());

          }
        },
          builder:(context,state){

        return Scaffold(
        body:SingleChildScrollView(
          physics:const BouncingScrollPhysics(),
          child: Form(
            key:formKey ,
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      'Sign Up',
                      style:Theme.of(context).textTheme.headline4?.copyWith(
                          color:Colors.black87
                      ) ,
                    ),
                    const SizedBox(
                      height:10.0 ,
                    ),
                    Text(
                      'Add your details to sign up',
                      style:Theme.of(context).textTheme.bodyText1?.copyWith(
                        color:Colors.black45,
                      ) ,
                    ),
                    const SizedBox(
                      height:60.0 ,
                    ),
                    textFormField(
                      controller: nameController,
                      validator:(String? value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Please enter your name';
                        }
                      },
                      keyboardType: TextInputType.name,
                      labelText: 'Name',
                    ),
                    const SizedBox(
                      height:25.0 ,
                    ),
                    textFormField(
                      controller: emailController,
                      validator:(String? value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Please enter your email';
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      labelText: 'Email',
                    ),
                    const SizedBox(
                      height:25.0 ,
                    ),
                    textFormField(
                      controller: phoneController,
                      validator:(String? value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Please enter your number';
                        }
                      },
                      keyboardType: TextInputType.phone,
                      labelText: 'Mobile No',
                    ),
                    const SizedBox(
                      height:25.0 ,),
                    textFormField(
                      controller: passwordController,
                      validator:(String? value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Please enter your email';
                        }
                      },
                      keyboardType: TextInputType.text,
                      labelText: 'Password',
                    ),
                    const SizedBox(
                      height:25.0 ,),
                    textFormField(
                      controller: addressController,
                      validator:(String? value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Please enter your email';
                        }
                      },
                      keyboardType: TextInputType.text,
                      labelText: 'Address',
                    ),
                    const SizedBox(
                      height:50.0 ,
                    ),
                    ConditionalBuilder(
                        condition:state is! MealSignUpLoadingState,
                        builder: (context)=>Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                style:ButtonStyle(
                                    shape: MaterialStateProperty.all<OutlinedBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(60),
                                      ),
                                    ),
                                    backgroundColor:MaterialStateProperty.all<Color>(defaultColor),
                                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                        const EdgeInsets.all(15)
                                    )
                                ),
                                onPressed: ()
                                {
                                  if(formKey.currentState!.validate())
                                  {
                                    MealSignUpCubit.get(context).userSignUp(
                                      name: nameController.text,
                                      email: emailController.text,
                                      password: passwordController.text,
                                      phone:phoneController.text ,
                                      address: addressController.text,

                                    );
                                  }
                                },
                                child: const Text('Sign Up',
                                  style:TextStyle(
                                      fontSize: 20.0
                                  ) ,
                                ),
                              ),
                            ),
                          ],
                        ),
                        fallback: (context)=>const Center(child: CircularProgressIndicator())),
                   const Expanded(
                      child:  SizedBox.shrink()
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center ,
                      children: [
                        const Text(
                          'Already have an Account?',
                          style:TextStyle(
                              color:Colors.black
                          ) ,
                        ),
                        defaultTextButton(
                          function: ()
                          {
                            Navigator.pop(context);
                          },
                          text:'Login',
                        ),
                      ],
                    ),
                  ]
              ),
            ),
          ),
        ) ,
      );

    },
    ),
    );
  }
}

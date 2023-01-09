// ignore_for_file: must_be_immutable, avoid_print
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mdi/mdi.dart';
import 'package:mealpp/layout/meal_layout/meal_layout.dart';
import 'package:mealpp/modules/meal_login/cubit/state.dart';
import 'package:mealpp/modules/meal_signup/views/meal_signup_scrren.dart';
import '../../../shard/components/components.dart';
import '../../../shard/network/local/cache_helper.dart';
import '../../reset_password/reset_password_screen.dart';
import '../cubit/cubit.dart';


class MealLoginScreen extends StatelessWidget {
  MealLoginScreen({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>MealLoginCubit(),
      child: BlocConsumer<MealLoginCubit,MealLoginStates>(
        listener: (context,state)
        {
          if(state is MealLoginErrorState)
          {
            showToast(text: state.error, state: ToastStatus.ERROR);
          }
          if(state is MealLoginSuccessState)
          {
            CacheHelper.saveData(key: 'uId', value:state.uId
            ).then((value){
              navigateAndFinish(context,const MealLayoutScreen());
            });
          }
        },
        builder:(context,state){
          return Scaffold(
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
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
                        'Login',
                        style:Theme.of(context).textTheme.headline4?.copyWith(
                            color:Colors.black87
                        ) ,
                      ),
                      const SizedBox(
                        height:10.0 ,
                      ),
                      Text(
                        'Add your details to login',
                        style:Theme.of(context).textTheme.bodyText1?.copyWith(
                          color:Colors.black45,
                        ) ,
                      ),
                      const SizedBox(
                        height:60.0 ,
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
                        labelText: 'Your Email',
                      ),
                      const SizedBox(
                        height:30.0 ,
                      ),
                      textFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.text,
                          validator:(String? value)
                      {
                      if(value!.isEmpty)
                      {
                      return 'Please enter your password';
                      }
                      },
                        labelText: 'Password',
                      ),
                      const SizedBox(
                        height:30.0 ,),
                      ConditionalBuilder(
                          condition: state is! MealLoginLoadingState,
                          builder: (context)=>elevatedButton(text: 'Login', function: ()
                          {
                            if(formKey.currentState!.validate())
                            {
                              MealLoginCubit.get(context).userLogin(
                                  email: emailController.text,
                                  password: passwordController.text);
                            }
                          }),
                           fallback: (context)=>const Center(child: CircularProgressIndicator())),
                      const SizedBox(
                        height:20.0 ,),
                      TextButton(
                          onPressed: ()
                          {
                            navigateTo(context, RestPasswordScreen());
                          },
                        child:const Text( 'Forgot your password?',
                        style:TextStyle(
                          color:Colors.black87,
                          fontSize: 18.0
                        ) ,
                        )
                      ),
                      Text(
                        'or Login With',
                        style:Theme.of(context).textTheme.bodyText1?.copyWith(
                          color:Colors.black,
                        ) ,
                      ),
                     const SizedBox(
                       height:40.0 ,
                     ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style:ButtonStyle(
                                  shape: MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                                  ),
                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.blue),
                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                      const EdgeInsets.all(15)
                                  )
                              ),
                                onPressed: (){},
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.center ,
                                  children: const [
                                    Icon(
                                      Mdi.facebook,
                                    ),
                                    SizedBox(
                                      width:20.0 ,
                                    ),
                                    Text('Login with Facebook'),
                                  ],
                                ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height:20.0 ,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              style:ButtonStyle(
                                  shape: MaterialStateProperty.all<OutlinedBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(60),
                                    ),
                                  ),
                                  backgroundColor:MaterialStateProperty.all<Color>(Colors.deepOrange),
                                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                      const EdgeInsets.all(15)
                                  )
                              ),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.center ,
                                  children: const [
                               Icon(
                                 Mdi.google,
                               ),
                                    SizedBox(
                                      width:20.0 ,
                                    ),
                                    Text('Login with Google'),
                                  ],
                                ),
                            ),
                          ),
                        ],
                      ),
                     const Expanded(
                        child: SizedBox.shrink()
                      ),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children: [
                          const Text(
                            'Don\'t have an account?',
                            style:TextStyle(
                                color:Colors.black
                            ) ,
                          ),
                          defaultTextButton(
                            function: ()
                            {
                              navigateTo(context, MealSignUpScreen());
                            },
                            text:'Sign Up',
                          ),
                        ],
                      ),
                    ]
                  ),
                ),
              ),
            ) ,
          );
        } ,
      ),
    );
  }
}
// Row(
// children: [
// Expanded(
// child: ElevatedButton(
// style:ButtonStyle(
// shape: MaterialStateProperty.all<OutlinedBorder>(
// RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(60),
// ),
// ),
// backgroundColor:MaterialStateProperty.all<Color>(defaultColor),
// padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
// const EdgeInsets.all(15)
// )
// ),
// onPressed: ()
// {
// if(formKey.currentState!.validate())
// {
// MealLoginCubit.get(context).userLogin(
// email: emailController.text,
// password: passwordController.text);
// }
//
// },
// child: const Text('Login',
// style:TextStyle(
// fontSize: 20.0
// ) ,
// ),
// ),
// ),
// ],
//),
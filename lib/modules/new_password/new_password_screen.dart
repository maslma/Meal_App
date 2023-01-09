// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../../shard/components/components.dart';
import '../meal_login/views/meal_login_screen.dart';

class NewPasswordScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var passwordController = TextEditingController();
  var confirmpasswordController = TextEditingController();

  NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        physics:const BouncingScrollPhysics() ,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
                top:50.0
            ),
            child: Form(
              key:formKey ,
              child: Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      'New Password',
                      style:Theme.of(context).textTheme.headline4?.copyWith(
                          color:Colors.black87
                      ) ,
                    ),
                    const SizedBox(
                      height:20.0 ,
                    ),
                    const Text(
                      'Please enter your email to receive a\n link to  create a new password via email',
                      style:TextStyle(
                          color:Colors.grey,
                          fontWeight: FontWeight.bold
                      ) ,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height:30.0 ,
                    ),
                    textFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.emailAddress,
                      validator:(String? value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Please enter your newPassword';
                        }
                      },
                      labelText: 'New Password'
                    ),
                    const SizedBox(
                      height:30.0 ,
                    ),
                    textFormField(
                      controller: confirmpasswordController,
                      keyboardType: TextInputType.emailAddress,
                      validator:(String? value)
                      {
                        if(value!.isEmpty)
                        {
                          return 'Please enter your confirmPassword';
                        }
                      },
                      labelText: 'Confirm Password'
                    ),
                    const SizedBox(
                      height:30.0 ,),
                    elevatedButton(text: 'Send', function: ()
                    {
                      if(formKey.currentState!.validate())
                      {
                        navigateTo(context, MealLoginScreen());

                      }
                    }),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

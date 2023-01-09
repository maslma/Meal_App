// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mealpp/shard/components/components.dart';
import '../check_number/check_number_screen.dart';


class RestPasswordScreen  extends StatelessWidget {

  var emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  RestPasswordScreen({Key? key}) : super(key: key);

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
                    'Rest Password',
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
                  ),
                  const SizedBox(
                    height:30.0 ,
                  ),
                  textFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator:(String? value)
                    {
                      if(value!.isEmpty)
                      {
                        return 'Please enter your email';
                      }
                    },
                      labelText: 'Email'
                  ),
                  const SizedBox(
                    height:30.0 ,),
                  elevatedButton(text: 'Send', function: ()
                  {
                    if(formKey.currentState!.validate())
                    {
                      navigateTo(context, CheckNumberScreen());

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

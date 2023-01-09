import 'package:flutter/material.dart';
import 'package:mealpp/modules/new_password/new_password_screen.dart';
import '../../shard/components/components.dart';

// ignore: must_be_immutable
class CheckNumberScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusNode focusNode3 = FocusNode();
  FocusNode focusNode4 = FocusNode();

  CheckNumberScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Text(
                          'We have sent an OTP to\n your Mobile ',
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.black87),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'Please check your mobile number 071*****12\n continue to reset your password ',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      children: [
                        buildOTPValue(focusNode1, onChanged: (value) {
                          if (value.isNotEmpty) focusNode2.requestFocus();
                        }),
                        const SizedBox(
                          width: 10.0,
                        ),
                        buildOTPValue(focusNode2, onChanged: (value) {
                          if (value.isNotEmpty) focusNode3.requestFocus();
                          if (value.isEmpty) focusNode1.requestFocus();
                        }),
                        const SizedBox(
                          width: 10.0,
                        ),
                        buildOTPValue(focusNode3, onChanged: (value) {
                          if (value.isNotEmpty) focusNode4.requestFocus();
                          if (value.isEmpty) focusNode2.requestFocus();
                        }),
                        const SizedBox(
                          width: 10.0,
                        ),
                        buildOTPValue(focusNode4, onChanged: (value) {
                          if (value.isEmpty) focusNode2.requestFocus();
                        }),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    elevatedButton(
                        function: () {
                          if (formKey.currentState!.validate()) {
                            navigateTo(context, NewPasswordScreen());
                          }
                        },
                        text: 'Next'),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t  Receive?',
                          style: TextStyle(color: Colors.black),
                        ),
                        defaultTextButton(
                          function: () {},
                          text: 'Click Here',
                        ),
                      ],
                    ),
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

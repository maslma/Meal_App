// ignore_for_file: constant_identifier_names
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mealpp/shard/styles/colors.dart';

Widget defaultTextButton({
  required Function function,
  required String text,
}) =>
    TextButton(
      onPressed: () {
        function();
      },
      child: Text(
        text,
        style: const TextStyle(color: defaultColor),
      ),
    );

Widget textFormField({
  required TextEditingController controller,
  required TextInputType keyboardType,
  required Function validator,
  required String labelText,
}) =>
    TextFormField(
      validator: (s) => validator(s),
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: Colors.grey[200],
        filled: true,
        label: Text(labelText),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(50),
        //   borderSide:const BorderSide(color: Colors.red)
        // ),
        floatingLabelStyle: const TextStyle(color: Colors.grey),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      ),
    );

Widget elevatedButton({required Function function, required String text}) =>
    Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(defaultColor),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.all(15)),
            ),
            onPressed: () {
              function();
            },
            child: Text(
              text,
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
        ),
      ],
    );

Expanded buildOTPValue(FocusNode focusNode,
        {ValueChanged<String>? onChanged}) =>
    Expanded(
        child: TextFormField(
      onChanged: onChanged,
      focusNode: focusNode,
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your OTP number';
        }
        return null;
      },
      textAlign: TextAlign.center,
      obscureText: true,
      obscuringCharacter: '*',
      style: const TextStyle(fontSize: 32, color: Colors.black),
      decoration: InputDecoration(
          border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
      )),
    ));

Widget myDivider() => Container(
      width: double.infinity,
      height: 1.0,
      color: Colors.grey[300],
    );

void navigateTo(context, widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) {
        return false;
      },
    );

void showToast({
  required String? text,
  required ToastStatus state,
}) =>
    Fluttertoast.showToast(
        msg: text!,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 5,
        backgroundColor: chooseToastColor(state),
        textColor: Colors.white,
        fontSize: 16.0);

enum ToastStatus { SUCCESS, ERROR, WARNING }

Color? chooseToastColor(ToastStatus state) {
  Color color;
  switch (state) {
    case ToastStatus.SUCCESS:
      color = Colors.green;
      break;
    case ToastStatus.ERROR:
      color = Colors.red;
      break;
    case ToastStatus.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}

Widget defaultBottomNavBar({
  required int index,
  Function? onTap,
  Color background = Colors.red,
  context,
}) =>
    SizedBox(
      height: 73,
      child: CurvedNavigationBar(
        index: index,
        height: 60,
        animationDuration: const Duration(milliseconds: 500),
        backgroundColor: background,
        items: [
          Icon(Icons.grid_view_rounded,
              size: 30, color: index == 0 ? Colors.red : Colors.grey),
          Icon(Icons.shopping_bag,
              size: 30, color: index == 1 ? Colors.red : Colors.grey),
          Icon(Icons.home,
              size: 30, color: index == 2 ? Colors.red : Colors.grey),
          Icon(Icons.person,
              size: 30, color: index == 3 ? Colors.red : Colors.grey),
          Icon(Icons.menu_open,
              size: 30, color: index == 4 ? Colors.red : Colors.grey),
        ],
        onTap: (index) {
          onTap!(index);
        },
      ),
    );

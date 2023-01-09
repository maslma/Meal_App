// POST
// UPDATE
// DELETE

// GET

// base url : https://newsapi.org/
// method (url) : v2/top-headlines?
// queries : country=eg&category=business&apiKey=2faed9fb1d254d2ea04e062071a449e2


//https://newsapi.org/v2/everything?q=tesla&apiKey=2faed9fb1d254d2ea04e062071a449e2

import 'package:flutter/material.dart';

import '../../modules/meal_login/views/meal_login_screen.dart';
import '../network/local/cache_helper.dart';

void signOut(context)
{

  CacheHelper.removeData(key: 'uId').then((value)
  {
    Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) =>  MealLoginScreen()),
          (route) => false,
    );
  });
}

void printFullText(String text)
{
  final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

String? uId ='';
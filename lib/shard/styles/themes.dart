import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'colors.dart';

ThemeData darkTheme = ThemeData(
  primarySwatch:defaultColor ,
  scaffoldBackgroundColor:HexColor('333739'),
  appBarTheme:AppBarTheme(
    titleSpacing:20.0 ,
    iconTheme:const IconThemeData(
      color:Colors.white,
    ) ,
    backgroundColor:HexColor('333739'),
    elevation:0.0 ,
    systemOverlayStyle:const SystemUiOverlayStyle(
      statusBarColor:Colors.red,
      statusBarIconBrightness: Brightness.light,
    ),
    titleTextStyle:const TextStyle(
        color:Colors.white,
        fontSize:20.0,
        fontWeight:FontWeight.bold
    ),
  ),
  bottomNavigationBarTheme:BottomNavigationBarThemeData(
      type:BottomNavigationBarType.fixed ,
      selectedItemColor:defaultColor,
      unselectedItemColor:Colors.white ,
      elevation:0.0,
      backgroundColor:HexColor('333739')
  ),
  floatingActionButtonTheme:const FloatingActionButtonThemeData(
      backgroundColor:Colors.blue
  ),
  textTheme:const TextTheme(
    bodyText1:TextStyle(
        fontSize:18.0,
        fontWeight:FontWeight.w600,
        color:Colors.white
    ),
    bodyText2:TextStyle(
      fontSize: 15.0,
      color:Colors.white,
    ),

  ),
  iconTheme:const IconThemeData(
    color:Colors.white
  ) ,


  fontFamily:'Maslma',
);
ThemeData lightTheme = ThemeData(
  primarySwatch:defaultColor,
  scaffoldBackgroundColor:Colors.white ,
  appBarTheme:const AppBarTheme(
    titleSpacing:20.0 ,
    iconTheme:IconThemeData(
      color:Colors.black,
    ) ,
    backgroundColor:Colors.white,
    elevation:0.0 ,
    systemOverlayStyle:SystemUiOverlayStyle(
      statusBarColor:Colors.white,
      statusBarIconBrightness: Brightness.light,
    ),
    titleTextStyle:TextStyle(
        color:Colors.black,
        fontSize:20.0,
        fontWeight:FontWeight.w500
    ),
  ),
  bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      type:BottomNavigationBarType.fixed ,
      selectedItemColor:defaultColor,
      unselectedItemColor:Colors.grey ,
      elevation:0.0,
      backgroundColor:Colors.white
  ),
  floatingActionButtonTheme:const FloatingActionButtonThemeData(
      backgroundColor:Colors.blue
  ),
  textTheme:const TextTheme(
    bodyText1:TextStyle(
      fontSize:18.0,
      color:Colors.black,
    ),

  ),
  fontFamily:'Maslma',



);
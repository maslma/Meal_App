// ignore_for_file: avoid_print
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealpp/firebase_options.dart';
import 'package:mealpp/layout/cubit/cubit.dart';
import 'package:mealpp/modules/on_boarding/on_oarding_screen.dart';
import 'package:mealpp/shard/bloc_observer.dart';
import 'package:mealpp/shard/components/components.dart';
import 'package:mealpp/shard/components/constants.dart';
import 'package:mealpp/shard/network/local/cache_helper.dart';
import 'package:mealpp/shard/styles/themes.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'layout/meal_layout/meal_layout.dart';
import 'modules/meal_login/views/meal_login_screen.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print('on Background message');
  print(message.data.toString());
  showToast(text: 'on Background message', state: ToastStatus.SUCCESS);
}

void main() async {
  await BlocOverrides.runZoned(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
      var token = await FirebaseMessaging.instance.getToken();
      print(token);
      // foreground
      FirebaseMessaging.onMessage.listen((event) {
        print('on Message');
        print(event.data.toString());
        showToast(text: 'on Message', state: ToastStatus.SUCCESS);
      });
      // Background
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);
      // when click on notification to open app
      FirebaseMessaging.onMessageOpenedApp.listen((event) {
        print('on Message oppend app');
        print(event.data.toString());
        showToast(text: 'on Message oppend app', state: ToastStatus.SUCCESS);
      });

      await CacheHelper.init();
      Widget widget;
      bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
      uId = CacheHelper.getData(key: 'uId');

      if (onBoarding != null) {
        if (uId != null) {
          widget = const MealLayoutScreen();
        } else {
          widget = MealLoginScreen();
        }
      } else {
        widget = const OnBoardingScreen();
      }

      runApp(MyApp(
        startWidget: widget,
      ));
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  final Widget startWidget;

  const MyApp({
    Key? key,
    required this.startWidget,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) => MealCubit()
              ..getUserData()
              ..getProduct()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        home: SplashScreenView(
          navigateRoute: startWidget,
          duration: 4000,
          imageSize: 200,
          imageSrc: "assets/images/splashImage.jpg",
          text: "Shef Meal",
          textType: TextType.NormalText,
          textStyle: const TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

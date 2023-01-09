import 'package:flutter/material.dart';
import 'package:mealpp/modules/meal_signup/views/meal_signup_scrren.dart';
import 'package:mealpp/modules/test_meal/widget/test_widget.dart';
import 'package:mealpp/shard/components/components.dart';
import '../../meal_login/views/meal_login_screen.dart';


class TestMealScreen extends StatelessWidget {
  const TestMealScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              SizedBox(
                width: double.infinity,
                height: 400,
                child: CustomPaint(
                  painter: ProfileCardPainter(Colors.red,80),
                ),
              ),
              CircleAvatar(
                backgroundColor:Colors.white,
                radius: 80,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: const Image(
                      width: 100,
                      image: AssetImage('assets/images/splashImage.jpg'),
                    ),
                ),
                //backgroundImage: ,
              ),
            ],
          ),
          const SizedBox(height: 25),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Shef',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.red
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                      'Meal',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                  'FOOD DELIVERY'
              )
            ],
          ),
          const SizedBox(height: 40),
          const Text(
              'Discover the best foods from over 1,000\nrestaurants and fast delivery to your doorstep',
            style:TextStyle(
              color:Colors.grey,
              fontWeight: FontWeight.bold
            ) ,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height:60.0 ,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              width:double.infinity ,
              height:50.0 ,
              clipBehavior:Clip.antiAliasWithSaveLayer ,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(30.0),
              ) ,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.red),
                ),
                onPressed: ()
                {
                  navigateTo(context, MealLoginScreen());
                },
                child: const Text('Login',
                  style:TextStyle(
                      fontSize: 20.0
                  ) ,
                ),
              ),
            ),
          ),
          const SizedBox(
              height: 15
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: SizedBox(
              width:double.infinity ,
              height:50.0 ,
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            side: const BorderSide(color: Colors.red)
                        ),
                      )
                  ),
                  onPressed: ()
                  {
                    navigateTo(context, MealSignUpScreen());
                    },
                  child: const Text(
                    'Create an Account',
                    style: TextStyle(
                        fontSize: 18.0,
                        color:Colors.red
                    ),
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}



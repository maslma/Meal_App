import 'package:flutter/material.dart';
import 'package:mealpp/modules/test_meal/views/test_meal_screen.dart';
import 'package:mealpp/shard/styles/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../layout/meal_layout/meal_layout.dart';
import '../../models/onboarding_model.dart';
import '../../shard/components/components.dart';
import '../../shard/network/local/cache_helper.dart';



class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);


  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final  List<BoardingModel> boarding =BoardingModel.boarding;

  var boardController = PageController();

  void subimt(){
    CacheHelper.saveData(key: 'onBoarding', value:true ).then((value)
    {
      if(value!)
      {
        navigateAndFinish(context,const MealLayoutScreen());
      }else{
        navigateAndFinish(context,TestMealScreen());

      }
    });
  }

  bool isLast = false;

  int boarderIndex=0;

@override
  void initState()
{
  super.initState();
  boardController = PageController();
  boardController.addListener(()
  {
    boarderIndex =boardController.page!.round();
  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: (context,index)=>Column(
                  children: [
                  const SizedBox(
                  height: 150,
                ),
                Image.asset(boarding[boarderIndex].image!,
                  width: 700,
                ),
                  ]
                ),
                itemCount:boarding.length ,
                controller:boardController ,
                physics:const BouncingScrollPhysics() ,
                onPageChanged:(int index)
                {
                  if(index == boarding.length - 1)
                  {
                    setState(()
                    {
                      isLast = true;
                    });
                    print('Last');
                  }else{
                    print(' not Last');
                    setState(()
                    {
                      isLast = false;
                    });
                  }
                } ,
              ),
            ),
            SmoothPageIndicator(
                controller:boardController,
                count: boarding.length,
                effect:const SwapEffect(
                  dotColor:Colors.grey,
                  dotHeight:10,
                  dotWidth:10,
                  spacing:5.0,
                  activeDotColor:defaultColor,

                )
            ),
            const SizedBox(
              height:40 ,
            ),
            SizedBox(
              child: Text(boarding[boarderIndex].title!,
              style: const TextStyle(
                fontSize: 25.0
              ),
              ),
              height: 70,
            ),
            SizedBox(child: Text(boarding[boarderIndex].desc!,
            style:const TextStyle(
              fontSize: 15.0,
              color:Colors.grey
            ) ,
            textAlign:TextAlign.center ,
            )
              ,height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 80),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        onPressed: ()
                        {
                          if(isLast)
                          {
                            subimt();
                          }else{
                            boardController.nextPage(
                                duration: const Duration(
                                  milliseconds:750,
                                ),
                                curve: Curves.fastLinearToSlowEaseIn
                            );
                          }
                        },
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
                        child: const Text('Next'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealpp/layout/cubit/cubit.dart';
import 'package:mealpp/shard/styles/colors.dart';
import '../../shard/components/components.dart';
import '../cubit/states.dart';



class MealLayoutScreen extends StatefulWidget {
  const MealLayoutScreen({Key? key}) : super(key: key);

  @override
  State<MealLayoutScreen> createState() => _MealLayoutScreenState();
}

class _MealLayoutScreenState extends State<MealLayoutScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealCubit,MealStates>(
        listener:(context,state){},
        builder:(context,state){
          return Scaffold(
            appBar: AppBar(
              title: Text(MealCubit.get(context).titles[MealCubit.get(context).currentIndex]),
              actions: [
                IconButton(
                    onPressed:(){},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color:defaultColor ,

                    ),
                ),
              ],
            ),
            body: MealCubit.get(context).screens[MealCubit.get(context).currentIndex],
            bottomNavigationBar: defaultBottomNavBar(
              context: context,
              index: MealCubit.get(context).currentIndex,
              onTap: (index){
                MealCubit.get(context).changeCurrentIndex(index);
              },
            ),
          );
        },
    );
  }
}

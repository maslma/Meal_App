import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealpp/layout/cubit/cubit.dart';
import 'package:mealpp/layout/cubit/states.dart';
import '../../shard/components/components.dart';
import '../../shard/styles/colors.dart';


class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealCubit,MealStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            leading: Row(
              children: [
                const SizedBox(width: 8),
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            title: const Text(
              'Beverages',
            ),
            titleSpacing: 0,
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    //height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50)

                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: TextFormField(
                        //controller: messegeConroller,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            hintText: 'Search food',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            border: InputBorder.none,
                            prefixIcon: const Icon(Icons.search_rounded,size: 25)
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context,index)=> GestureDetector(
                      onTap: (){},
                      child: SizedBox(
                        width: double.infinity,
                        height: 250,
                        child: Stack(
                          children: [
                            const Image(
                              height: 250,
                              width: double.infinity,
                              fit: BoxFit.fill,
                              image: NetworkImage('https://img.freepik.com/free-photo/front-view-meat-burger-with-salad-cheese-tomatoes-dark-background_140725-89540.jpg?w=740&t=st=1658543227~exp=1658543827~hmac=1534f6c83bf3b31c08174879f4fd88b73ef7d67fdfad32580a126f3edd2780a7'),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                                  child: Text(
                                    'Minute by tuk tuk',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                  child: Row(
                                    children: const [
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        '4.5',
                                        style: TextStyle(
                                            color: Colors.amber
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Western Food',
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '.',
                                        style: TextStyle(
                                          color: defaultColor,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'Beverages',
                                        style: TextStyle(
                                            color: Colors.white
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    separatorBuilder: (context,index)=> const SizedBox(height: 8),
                    itemCount: 7
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
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

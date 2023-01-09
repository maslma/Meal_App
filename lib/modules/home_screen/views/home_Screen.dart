// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealpp/layout/cubit/cubit.dart';
import 'package:mealpp/layout/cubit/states.dart';
import '../../../shard/styles/colors.dart';
import '../widget/home_widget.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealCubit,MealStates>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = MealCubit.get(context);

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  top: 15.0,
                  right: 15,
                  left: 15.0,
                ),
                child: Text(
                  'Delivering to',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 15.0,
                    right: 15,
                    left: 15.0,
                ),
                child: DropdownButton(
                  items:<String>[
                    'Current Location',
                    'Selected Location',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value){
                    cubit.changedropDownValue(value);
                  },
                  iconSize: 30,
                  value: cubit.dropDownValue,
                  icon:const Icon(
                      Icons.keyboard_arrow_down,
                    color: Colors.red,
                  ),
                  elevation: 1,
                  style:const TextStyle(
                    fontSize: 20,
                      color: Colors.black
                  ) ,
                ),
              ),
              const SizedBox(height: 15),
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
              const SizedBox(height: 25),
              //Catagory
              Container(
                padding: const EdgeInsets.only(left: 15),
                height: 133,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context,index)=> buildCatItem(cubit.category[index]),
                    separatorBuilder: (context,index)=> const SizedBox(width: 15),
                      itemCount: cubit.category.length
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    const Text(
                      'Popular Restaurent',
                      style: TextStyle(
                        fontSize: 23
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            color: defaultColor,
                          ),
                        ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              ListView.separated(
                shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=> buildProductItem(cubit.product[index],context),
                  separatorBuilder: (context,index)=> const SizedBox(height: 5),
                  itemCount: cubit.product.length
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    const Text(
                      'Most Popular',
                      style: TextStyle(
                          fontSize: 23
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: (){},
                      child: const Text(
                        'View all',
                        style: TextStyle(
                          color: defaultColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Container(
                height: 230,
                padding: const EdgeInsets.only(left: 15),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context,index)=> buildMostPopularItem(cubit.product[index],context),
                    separatorBuilder: (context,index)=> const SizedBox(width: 10),
                    itemCount: cubit.product.length
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    const Text(
                      'Recent Item',
                      style: TextStyle(
                          fontSize: 23
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: (){},
                      child: const Text(
                        'View all',
                        style: TextStyle(
                          color: defaultColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index)=>buildRecentItem(cubit.product[index],context),
                  separatorBuilder: (context,index)=> const SizedBox(height: 10),
                  itemCount: cubit.product.length
              ),
              const SizedBox(height: 10)
            ],
          ),
        );
      },
    );
  }


}


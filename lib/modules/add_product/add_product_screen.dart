import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealpp/layout/cubit/cubit.dart';
import 'package:mealpp/layout/cubit/states.dart';
import 'package:mealpp/shard/components/components.dart';



// ignore: must_be_immutable
class AddProductScreen extends StatelessWidget {

  var formKey = GlobalKey<FormState>();
  var nameController =TextEditingController();
  var faveriteController =TextEditingController();
  var ratingcafeController =TextEditingController();
  var typefoodController =TextEditingController();
  var descriptionController =TextEditingController();
  var priceController =TextEditingController();

  AddProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealCubit,MealStates>(
      listener:(context,state){} ,
      builder:(context,state)
      {
        return Scaffold(
          appBar:AppBar(
            leading:IconButton(
                onPressed: ()
                {
                  Navigator.pop(context);
                },
                icon:const Icon(Icons.arrow_back_ios_new_outlined)
            ) ,
            titleSpacing:3.0 ,
            title:const Text(
              ' Add Product ',
            ) ,
            actions: [
              defaultTextButton(
                  function:()
                  {
                    if(formKey.currentState!.validate())
                    {
                      MealCubit.get(context).addProduct(
                        productname: nameController.text,
                        faverite: faveriteController.text,
                        ratingcafe: ratingcafeController.text,
                        typefood: typefoodController.text,
                        description: descriptionController.text,
                        price: priceController.text,

                      );
                    }
                    },
                  text: 'Add'),
              const SizedBox(
                width: 5.0,),
            ],
          ) ,
          body: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                      textFormField(
                        controller: nameController,
                        validator: (String? value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'writ is name';
                          }
                        },
                        labelText: 'Name Product',
                        keyboardType: TextInputType.text,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                      textFormField(
                        controller: faveriteController,
                        keyboardType: TextInputType.text,
                        validator: (String? value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'writ is faverite';
                          }
                        },
                        labelText: 'Faverite',
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    textFormField(
                        controller: ratingcafeController,
                      keyboardType: TextInputType.text,
                        validator: (String? value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'writ is ratingcafe';
                          }
                        },
                        labelText: 'RatingCafe',
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    textFormField(
                        controller: typefoodController,
                      keyboardType: TextInputType.text,
                        validator: (String? value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'writ is westernFood';
                          }
                        },
                        labelText: 'Type Food',
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    textFormField(
                        controller: descriptionController,
                      keyboardType: TextInputType.text,
                        validator: (String? value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'writ is Description';
                          }
                        },
                        labelText: 'Description',
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    textFormField(
                        controller: priceController,
                      keyboardType: TextInputType.text,
                        validator: (String? value)
                        {
                          if(value!.isEmpty)
                          {
                            return 'writ is price';
                          }
                        },
                        labelText: 'Price',
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    if(MealCubit.get(context).productImage != null)
                      Container(
                        height:200.0 ,
                        width:double.infinity ,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          image:DecorationImage(
                              image:FileImage(MealCubit.get(context).productImage!),
                              fit:BoxFit.cover
                          ),
                        ) ,
                      ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    TextButton(
                      onPressed: ()
                      {
                        MealCubit.get(context).getProductImage();
                      },
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children: const [
                          Icon(
                            Icons.image),
                          SizedBox(
                            width:10.0 ,
                          ),
                          Text(
                              'add photo'),
                        ],
                      ),),
                    const SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      } ,
    );  }
}

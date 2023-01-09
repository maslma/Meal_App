import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mealpp/layout/cubit/cubit.dart';
import 'package:mealpp/layout/cubit/states.dart';
import '../../shard/components/constants.dart';
import '../../shard/styles/colors.dart';




class ProfileScreen extends StatelessWidget {

  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();

  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MealCubit,MealStates>(
      listener:(context,state){} ,
      builder:(context,state)
      {
        var userModel = MealCubit.get(context).userModel;
        var profileImage = MealCubit.get(context).profileImage;
        nameController.text=userModel.name!;
        phoneController.text=userModel.phone!;
        emailController.text=userModel.email!;
        addressController.text=userModel.address!;

        return SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 240,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: profileImage == null ? NetworkImage('${userModel.image}') :  FileImage(profileImage) as ImageProvider,

                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 20,
                              child: CircleAvatar(
                                radius: 17,
                                backgroundColor: defaultColor,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10,
                                      right: 10
                                  ),
                                  child: IconButton(
                                    onPressed: ()
                                    {
                                      MealCubit.get(context).getProfileImage();
                                    },
                                    icon: const Icon(
                                      Icons.camera_enhance,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        TextButton.icon(
                          label: const Text(
                            'Edite Profile',
                            style: TextStyle(
                                color: defaultColor
                            ),
                          ),
                          onPressed: ()
                          {
                            MealCubit.get(context).uploadProfileImage(
                                name: nameController.text,
                                phone: phoneController.text,
                                address:addressController.text,
                              // password: passwordController.text
                            );
                          },
                          icon: const Icon(
                            Icons.edit,
                            color: defaultColor,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Hi ${userModel.name}',
                          style: const TextStyle(
                              height: .5,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.center ,
                          children: [
                            TextButton(
                              onPressed: (){
                                signOut(context);
                              },
                              child: const Text(
                                'Sing out',
                                style: TextStyle(
                                    height: 0.1,
                                    color: defaultColor,
                                    fontSize: 15
                                ),
                              ),
                            ),
                            // TextButton(
                            //   onPressed: (){
                            //     // navigateTo(context,);
                            //   },
                            //   child: const Text(
                            //     'Send Notify',
                            //     style: TextStyle(
                            //         height: 0.1,
                            //         color: defaultColor,
                            //         fontSize: 15
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // text form field
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          label: const Text(
                              'Name'
                          ),
                          labelStyle: TextStyle(color: Colors.grey[500]),
                          border: InputBorder.none,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 20),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          label: const Text(
                              'Email'
                          ),
                          labelStyle: TextStyle(color: Colors.grey[500]),
                          border: InputBorder.none,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 20),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          label: const Text(
                              'Phone'
                          ),
                          labelStyle: TextStyle(color: Colors.grey[500]),
                          border: InputBorder.none,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 20),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextFormField(
                        controller: addressController,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          label: const Text(
                              'Address'
                          ),
                          labelStyle: TextStyle(color: Colors.grey[500]),
                          border: InputBorder.none,
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                      height: 30),
                  //Button
                  Container(
                    width:double.infinity,
                    height:50.0 ,
                    clipBehavior:Clip.antiAliasWithSaveLayer,
                    decoration:BoxDecoration(
                      borderRadius:BorderRadius.circular(40.0),
                    ) ,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:MaterialStateProperty.all(Colors.red),
                      ),
                      onPressed: ()
                      {
                        MealCubit.get(context).updateUser(
                            name: nameController.text,
                            phone: phoneController.text,
                            address:addressController.text,
                            // password: passwordController.text
                        );
                      },
                      child: const Text(
                        'Save',
                        style:TextStyle(
                            fontSize: 15.0
                        ) ,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  // Row(
                  //   children: [
                  //     ElevatedButton(
                  //       style: ButtonStyle(
                  //         backgroundColor:MaterialStateProperty.all(Colors.red),
                  //       ),
                  //       onPressed: ()async
                  //       {
                  //         await FirebaseMessaging.instance.subscribeToTopic('connectTopic');
                  //       },
                  //       child: const Text(
                  //         'Subscribe To Topic',
                  //         style:TextStyle(
                  //             fontSize: 15.0
                  //         ) ,
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 15.0,
                  //     ),
                  //
                  //     ElevatedButton(
                  //       style: ButtonStyle(
                  //         backgroundColor:MaterialStateProperty.all(Colors.red),
                  //       ),
                  //       onPressed: ()async
                  //       {
                  //         await FirebaseMessaging.instance.unsubscribeFromTopic('connectTopic');
                  //
                  //       },
                  //       child: const Text(
                  //         'Un Subscribe To Topic',
                  //         style:TextStyle(
                  //             fontSize: 15.0
                  //         ) ,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(height: 15),
                ],
              ),
            ),
          ),
        );
      } ,
    );
  }
}

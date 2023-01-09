import 'package:flutter/material.dart';
import '../../shard/styles/colors.dart';

class MealAboutUSScreen extends StatelessWidget {
  const MealAboutUSScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:IconButton(
          onPressed: ()
          {
            Navigator.pop(context);
          },
          icon:const Icon(Icons.arrow_back_ios_new_outlined,) ,
        ) ,
        title:const Text(
            'About Us'
        ) ,
        actions: [
          IconButton(
              onPressed: (){},
              icon:const Icon(Icons.shopping_cart_sharp))
        ],
      ),
      body:ListView(
        physics: const BouncingScrollPhysics(),
       children: const [
         ListTile(
           leading: Icon(Icons.circle_sharp,
                    color:defaultColor ,
                    size:10 ,
         ),
           title:Text(
             'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
           ) ,
         ),
         SizedBox(
           height:20.0 ,
         ),
         ListTile(
           leading: Icon(Icons.circle_sharp,
                    color:defaultColor ,
                    size:10 ,
         ),
           title:Text(
             'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
           ) ,
         ),
         SizedBox(
           height:20.0 ,
         ),
         ListTile(
           leading: Icon(Icons.circle_sharp,
                    color:defaultColor ,
                    size:10 ,
         ),
           title:Text(
             'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
           ) ,
         ),
         SizedBox(
           height:20.0 ,
         ),
         ListTile(
           leading: Icon(Icons.circle_sharp,
                    color:defaultColor ,
                    size:10 ,
         ),
           title:Text(
             'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
           ) ,
         ),
       ],
      )

    );
  }
}

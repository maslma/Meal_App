import 'package:flutter/material.dart';
import '../../shard/styles/colors.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Find discounts, Offers special meals and more !',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              width:170 ,
              height:40.0 ,
              clipBehavior:Clip.antiAliasWithSaveLayer,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(40.0),
              ) ,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:MaterialStateProperty.all(Colors.red),
                ),
                onPressed: (){},
                child: const Text(
                  'Check Offers',
                  style:TextStyle(
                      fontSize: 15.0
                  ) ,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context,index)=> SizedBox(
                width: double.infinity,
                height: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.fill,
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpUuSKIbKRYBPgbDkM5tNXpiDUAZ86gJiPSw&usqp=CAU'),
                    ),
                    const SizedBox(height: 15),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        'Minute by tuk tuk',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: defaultColor,
                          ),
                          const Text(
                            '4.5',
                            style: TextStyle(
                                color: defaultColor
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '(124 ratings) Cafe',
                            style: TextStyle(
                                color: Colors.grey[400]
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            '.',
                            style: TextStyle(
                              color: defaultColor,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Western Food',
                            style: TextStyle(
                                color: Colors.grey[400]
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context,index)=> const SizedBox(height: 5),
              itemCount: 5
          ),

        ],
      ),
    );
  }
}

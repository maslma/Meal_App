import 'package:flutter/material.dart';
import '../../../models/categories_model.dart';
import '../../../models/product_model.dart';
import '../../../shard/components/components.dart';
import '../../../shard/styles/colors.dart';
import '../../product_Screen/product_screen.dart';

Widget buildCatItem(CategoruModel model)=>SizedBox(
  height: 132,
  width: 90,
  child: Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(
          height: 90,
          width: 90,
          fit: BoxFit.cover,
          image: AssetImage('${model.image}'),
        ),
      ),
      const SizedBox(height: 5),
      Text(
        '${model.name}',
        style: const TextStyle(
            fontSize: 20
        ),
      ),
    ],
  ),
);

Widget buildProductItem(ProductModel model,context)=>InkWell(
  onTap: ()
  {
    navigateTo(context, product_Screen(model));
  },
  child: SizedBox(
    width: double.infinity,
    height: 350,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 250,
          width: double.infinity,
          fit: BoxFit.fill,
          image: NetworkImage('${model.productimage}'),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            '${model.productname}',
            style: const TextStyle(
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
              Text(
                '${model.faverite}',
                style: const TextStyle(
                    color: defaultColor
                ),
              ),
              const SizedBox(width: 5),
              Text(
                '${model.ratingcafe}',
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
                '${model.typefood}',
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
);

Widget buildMostPopularItem(ProductModel model,context)=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image(
        height: 150,
        fit: BoxFit.fill,
        image: NetworkImage('${model.productimage}'),
      ),
    ),
    const SizedBox(height: 10),
    Text(
      '${model.productname}',
      style: const TextStyle(
        fontSize: 18,
      ),
    ),
    Row(
      children: [
        Text(
          '${model.typefood}',
          style: TextStyle(
              color: Colors.grey[400]
          ),
        ),
        const SizedBox(width: 5),
        const Icon(
          Icons.star_rounded,
          color: defaultColor,
        ),
        Text(
          '${model.faverite}',
          style: const TextStyle(
              color: defaultColor
          ),
        ),
      ],
    ),
  ],
);

Widget buildRecentItem(ProductModel model,context)=>Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15.0),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(
          height: 100,
          width: 100,
          fit: BoxFit.fill,
          image: NetworkImage('${model.productimage}'),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              '${model.productname}',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child:Row(
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: defaultColor,
                  ),
                  Text(
                    '${model.faverite}',
                    style: const TextStyle(
                        color: defaultColor
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '${model.ratingcafe}',
                    style: TextStyle(
                        color: Colors.grey[400]
                    ),
                  ),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Text(
                  '${model.typefood}',
                  style: TextStyle(
                      color: Colors.grey[400]
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  ),
);
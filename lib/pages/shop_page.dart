// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kingsize_app/models/fast_food_shop.dart';
import 'package:kingsize_app/models/fast_foods.dart';
import 'package:provider/provider.dart';

import '../componets/fast_food_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add items to cart
  void addToCart(FastFoods fastFoods) {
    Provider.of<FastFoodShop>(context, listen: false).addItemToCart(fastFoods);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Successfully added to cart '),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FastFoodShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Text(
                      'What are you buying today?',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 20),
                    Expanded(
                        child: ListView.builder(
                      itemCount: value.fastFoodShop.length,
                      itemBuilder: (context, index) {
                        FastFoods eachFastFoods = value.fastFoodShop[index];

                        return FastFoodTile(
                          fastFoods: eachFastFoods,
                          onPressed: () => addToCart(eachFastFoods),
                          icon: Icon(Icons.add),
                        );
                      },
                    ))
                  ],
                ),
              ),
            ));
  }
}

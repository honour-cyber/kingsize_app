// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kingsize_app/models/fast_food_shop.dart';
import 'package:kingsize_app/models/fast_foods.dart';
import 'package:provider/provider.dart';

import '../componets/fast_food_tile.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // remove cart items
  void removeFromCart(FastFoods fastFoods) {
    Provider.of<FastFoodShop>(context, listen: false)
        .removeItemFromCart(fastFoods);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FastFoodShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      'Your Carts',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.userCart.length,
                            itemBuilder: (context, index) {
                              FastFoods eachFastFood = value.userCart[index];
                              return FastFoodTile(
                                  fastFoods: eachFastFood,
                                  onPressed: () => removeFromCart(eachFastFood),
                                  icon: Icon(Icons.delete));
                            })),
                    Container(
                      padding: EdgeInsets.all(25),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent[400],
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        'Pay Now',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )),
                    )
                  ],
                ),
              ),
            ));
  }
}

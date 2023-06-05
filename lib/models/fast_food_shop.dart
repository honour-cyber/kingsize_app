import 'package:flutter/material.dart';
import 'package:kingsize_app/models/fast_foods.dart';

class FastFoodShop extends ChangeNotifier {
  // list of foods on sales
  final List<FastFoods> _shop = [
    // shawama
    FastFoods(
        name: 'Shawama', price: '#1500', imagePath: 'lib/images/shawama.png'),
    // bbq chicken
    FastFoods(
        name: 'BBQ Chicken', price: '#2500', imagePath: 'lib/images/BBQ.png'),

    //burger
    FastFoods(
        name: 'Burger', price: '#3000', imagePath: 'lib/images/Burger.png'),

    //suya

    FastFoods(name: 'Suya', price: '#1000', imagePath: 'lib/images/suya.jpeg')
  ];

  //user cart
  final List<FastFoods> _userCart = [];

  //get food list
  List<FastFoods> get fastFoodShop => _shop;

  // get user Cart

  List<FastFoods> get userCart => _userCart;

  // add foods to cart
  void addItemToCart(FastFoods fastFoods) {
    _userCart.add(fastFoods);
    notifyListeners();
  }

  // remove foods from cart
  void removeItemFromCart(FastFoods fastFoods) {
    _userCart.remove(fastFoods);
    notifyListeners();
  }
}

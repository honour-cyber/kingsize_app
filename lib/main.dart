// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kingsize_app/constants.dart';
import 'package:kingsize_app/models/fast_food_shop.dart';
import 'package:kingsize_app/pages/welcome_page.dart';
import 'package:provider/provider.dart';

import 'pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FastFoodShop(),
      builder: (context, child) => MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: WelcomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

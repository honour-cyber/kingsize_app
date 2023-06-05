import 'package:flutter/material.dart';
import 'package:kingsize_app/constants.dart';
import 'package:kingsize_app/models/fast_foods.dart';

class FastFoodTile extends StatelessWidget {
  final FastFoods fastFoods;
  final Widget icon;
  void Function()? onPressed;
  FastFoodTile(
      {super.key,
      required this.fastFoods,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: tileColor, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
          title: Text(fastFoods.name),
          subtitle: Text(fastFoods.price),
          leading: Image.asset(fastFoods.imagePath),
          trailing: IconButton(icon: icon, onPressed: onPressed)),
    );
  }
}

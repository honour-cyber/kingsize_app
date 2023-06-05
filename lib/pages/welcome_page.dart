// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kingsize_app/constants.dart';
import 'package:kingsize_app/pages/homepage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Center(
            child: Image.asset(
              'lib/images/kings2.png',
            ),
          ),
          Text(
            'Eat like a king....',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Container(
              padding: EdgeInsets.all(25),
              width: 300,
              decoration: BoxDecoration(
                  color: buttonColor, borderRadius: BorderRadius.circular(25)),
              child: Center(
                  child: Text(
                'Get Started',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              )),
            ),
          )
        ],
      ),
    );
  }
}

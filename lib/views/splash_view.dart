import 'dart:async';

import 'package:dailysindhyar/colors/colors.dart';
import 'package:dailysindhyar/views/home.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
@override
  void initState() {
    super.initState();
    // Perform one-time initialization tasks here
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomeView(),
        ),
      );
    });
    // super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colorconstant.red,
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the column vertically
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 200,
                height: 200,
              ),
              // Text(
              //   "Daily Sindh Yar",
              //   style: TextStyle(
              //     color: Colorconstant.whiteColor,
              //     fontFamily: "Quando",
              //     fontSize: 48.0,
              //     fontStyle: FontStyle.normal,
              //     fontWeight: FontWeight.w400,
              //     height: 1.0,
              //   ),
              // ), // Center the text horizontally
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up resources when the widget is removed from the tree
    super.dispose();
  }
}
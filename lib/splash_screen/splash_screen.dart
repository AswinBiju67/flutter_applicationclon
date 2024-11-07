import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_applicationclon/cl_screen/cl_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ClScreen(),
        ),
   ),
);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        height: double.infinity,
      fit: BoxFit.fill,
        "assets/images/OIP.jpeg"),
    );
  }
}
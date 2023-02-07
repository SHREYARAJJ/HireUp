import 'dart:async';
import 'package:flutter/material.dart';
import 'package:jobfinder/introduction_screen.dart';
import 'package:jobfinder/user_state.dart';

class SplashScreen extends StatefulWidget {


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 7),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>  IntroScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/logo1.png',
    fit: BoxFit.fill,);
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.white,
        ),
    );
  }

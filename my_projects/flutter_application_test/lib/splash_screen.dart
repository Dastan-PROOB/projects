import 'dart:core';
import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {


  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}
 
// Create a widget state
class _SplashScreenState extends State<SplashScreen> {
 
  // State initialization
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),

      () { Navigator.of(context).pushNamed('/page1'); }
    );
  }
 
  // Widget creation
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: Center(
        child: Image(image: AssetImage('assets/images/logo/Group 174.png'),),
      ),
    );
  }
 
}
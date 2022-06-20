import 'package:flutter/material.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen1.1/page11.dart';
import 'package:flutter_application_test/features/auth/presentation/screens/screen2.1/page21.dart';
import 'package:flutter_application_test/features/home/presentation/screens/homescreen1/homescreen.dart';
import 'package:flutter_application_test/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      initialRoute: '/page',
      routes: {
        '/page': (context)=> SplashScreen(),
        '/page1': (context)=> Page11(),
        '/page21': (context)=> Page21(),
        '/homepage1': (context)=> HomeScreen(),
      },
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_application_pogota_samostoyatelno/screens/weather_forecast_screen.dart';

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
        textTheme: ThemeData().textTheme.copyWith(
          headline1: const TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600)
        )
      ),
      home:  MyHomePage(),
    );
  }
}


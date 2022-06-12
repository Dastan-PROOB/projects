import 'package:flutter/material.dart';
import 'package:flutter_application_pogota_samostoyatelno/screens/city_screen.dart';

import 'package:flutter_application_pogota_samostoyatelno/widgets/bottom_list_view.dart';
import 'package:flutter_application_pogota_samostoyatelno/widgets/city_view.dart';
import 'package:flutter_application_pogota_samostoyatelno/widgets/dannye_view.dart';
import 'package:flutter_application_pogota_samostoyatelno/widgets/temp_view.dart';
import 'package:flutter_application_pogota_samostoyatelno/api/weather_api.dart';
import 'package:flutter_application_pogota_samostoyatelno/models/pogoda_dannye.dart';

class MyHomePage extends StatefulWidget {

 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<WeatherForecast> forecastobject;
  String _cityName='Leninpol';



  @override
  void initState() {

    super.initState();
    forecastobject=WeatherApi().fetchWeatherForecast(cityName: _cityName);
    // forecastobject!.then((value) {
    //   // ignore: avoid_print
    //   print(value.list![0].weather![0].main!);
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('openweather.org'),
        backgroundColor: Colors.grey[700],
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.location_on_outlined),
          onPressed: () {
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.location_city),
            onPressed: () async {
              var tappedName = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                return CityScreen();
              }));
              if (tappedName != null) {
                setState(() {
                  _cityName = tappedName;
                  forecastobject =
                      WeatherApi().fetchWeatherForecast(cityName: _cityName,);
                });
              }
            },
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.grey.shade100, Colors.grey.shade600])),
        child: ListView(
          children: <Widget>[
            Container(
              child: FutureBuilder<WeatherForecast>(
                future: forecastobject,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: <Widget>[
                        const SizedBox(height: 40.0),
                        CityView(snapshot: snapshot),
                        const SizedBox(height: 40),
                        Temperature(snapshot: snapshot),
                        const SizedBox(height: 30),
                        DannyeView(snapshot: snapshot),
                        const SizedBox(
                          height: 35,
                        ),
                        BottomoList(snapshot: snapshot),
                      ],
                    );
                  } else {
                    return Center(
                      child: Text('City not fount\nPlease enter correct city',style: TextStyle(fontSize: 25),textAlign: TextAlign.center,)
                    );
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

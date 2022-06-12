import 'package:flutter/material.dart';
import 'package:flutter_application_pogota_samostoyatelno/models/pogoda_dannye.dart';
import 'package:flutter_application_pogota_samostoyatelno/widgets/forecast_card.dart';

class BottomoList extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const BottomoList({required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          '7-DAY WEATHER FORECAST',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: 165,
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              width: MediaQuery.of(context).size.width / 2.7,
              color: Colors.lightGreen.shade800,
              child: forecastCard(snapshot,index),
            ),
            separatorBuilder: (context, index) => SizedBox(width: 8),
            itemCount: snapshot.data!.list!.length,
          ),
        )
      ],
    );
  }
}

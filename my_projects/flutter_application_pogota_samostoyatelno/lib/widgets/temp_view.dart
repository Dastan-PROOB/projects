import 'package:flutter/material.dart';
import 'package:flutter_application_pogota_samostoyatelno/models/pogoda_dannye.dart';

class Temperature extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  // ignore: use_key_in_widget_constructors
  const Temperature({required this.snapshot});

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data!.list;
    var icon = forecastList![0].getIconUrl();

    var tempMorning = forecastList[0].temp.morn.toStringAsFixed(0);
    var tempNight = forecastList[0].temp.night.toStringAsFixed(0);
    var temp = forecastList[0].temp.day.toStringAsFixed(0);

    var description = forecastList[0].weather[0].description;

    String textMorning = 'Morning';
    String textDay = 'Day';
    String textNight = 'Night';
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              NewWidget1(temp: tempMorning, text: textMorning),
              NewWidget1(temp: temp, text: textDay),
              NewWidget1(temp: tempNight, text: textNight),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Image.network(
            icon,
            scale: 0.6,
          ),
          Text(
            description,
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

class NewWidget1 extends StatelessWidget {
  const NewWidget1({
    required this.temp,
    required this.text,
  });

  final String temp;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          text,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$temp °С',
          style: const TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.w800),
        ),
      ],
    );
  }
}

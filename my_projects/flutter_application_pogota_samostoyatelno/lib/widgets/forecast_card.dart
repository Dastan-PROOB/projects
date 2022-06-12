import 'package:flutter/material.dart';
import 'package:flutter_application_pogota_samostoyatelno/models/pogoda_dannye.dart';
import 'package:flutter_application_pogota_samostoyatelno/utilities/forecast_util.dart';

Widget forecastCard(AsyncSnapshot<WeatherForecast> sn, int index) {
  var forecastList = sn.data!.list;
  var dayOfWeek = '';
  DateTime date =DateTime.fromMillisecondsSinceEpoch(forecastList![index].dt * 1000);
  var fullDate = Util.getformatdate(date);
  dayOfWeek = fullDate.split(',')[0];

  var tempNight = forecastList[index].temp.min.round();
  var tempDay = forecastList[index].temp.max.round();

  var image=forecastList[index].getIconUrl();
  return Column(
    children: <Widget>[
      Center(
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                dayOfWeek,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Image.network(image,scale: 1.0,)
            ],
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: <Widget>[
              Text('Day',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 5,
              ),
              Text('$tempDay °C',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22)),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                'Night',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '$tempNight °C',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ],
          )
        ],
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_application_pogota_samostoyatelno/models/pogoda_dannye.dart';
import 'package:flutter_application_pogota_samostoyatelno/utilities/forecast_util.dart';

class CityView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const CityView({required this.snapshot});
  @override
  Widget build(BuildContext context) {
    var forecastList=snapshot.data!.list![0].dt;
    var city = snapshot.data!.city.name;
    var country = snapshot.data!.city.country;
    var formattedDate= DateTime.fromMillisecondsSinceEpoch(forecastList * 1000);
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            '$city/ $country',
            style: TextStyle(
                color: Colors.grey.shade800,
                fontSize: 25,
                fontWeight: FontWeight.w700),
          ),
          Text(
            Util.getformatdate(formattedDate),
            style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}

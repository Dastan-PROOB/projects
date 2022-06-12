import 'package:flutter/material.dart';
import 'package:flutter_application_pogota_samostoyatelno/models/pogoda_dannye.dart';
import 'package:flutter_application_pogota_samostoyatelno/utilities/forecast_util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DannyeView extends StatelessWidget {
final AsyncSnapshot<WeatherForecast> snapshot;
  // ignore: use_key_in_widget_constructors
  const DannyeView({required this.snapshot});
  @override
  Widget build(BuildContext context) {
    var pressure=snapshot.data!.list![0].pressure*0.76;
    var humidity=snapshot.data!.list![0].humidity;
    var wind=snapshot.data!.list![0].speed;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Util.getItem(FontAwesomeIcons.temperatureArrowDown, pressure.round(), 'mm Hg'),
        Util.getItem(FontAwesomeIcons.droplet, humidity, '%'),
        Util.getItem(FontAwesomeIcons.wind, wind.toInt(), 'm/s'),
      ],
    );
  }
}
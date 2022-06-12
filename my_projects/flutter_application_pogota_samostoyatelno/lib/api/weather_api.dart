import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart'as http; 

import 'package:flutter_application_pogota_samostoyatelno/models/pogoda_dannye.dart';
import 'package:flutter_application_pogota_samostoyatelno/utilities/constants.dart';

class WeatherApi{

  Future<WeatherForecast> fetchWeatherForecast({String? cityName, }) async {


 
    Map<String, String?> parameters;
   

    var queryParameters={
      'APPID': Constants.Weather_app_id,
      'units': 'metric',
      'q': cityName,
    };
    parameters=queryParameters;
  


    var uri= Uri.https(Constants.Weather_base_url, Constants.Weather_forecast, parameters);

    log('reauest: ${uri.toString()}');

    var response=await http.get(uri);
    // ignore: avoid_print
    print('response: ${response.body} ');

    if(response.statusCode==200){
      return WeatherForecast.fromJson(json.decode(response.body));
    }
    else{
      throw Future.error('Error response');
    }
  }

}
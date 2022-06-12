import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Util{
  static String getformatdate(DateTime dateTime){
    return DateFormat('EEE,MMM d, y').format(dateTime);
  }

  static getItem(IconData icons,int value, String units){
  return Column(
    children: <Widget>[
      Icon(icons,color: Colors.indigo,),
      SizedBox(height: 10,),
      Text(value.toString(),style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w700),),
      SizedBox(height: 10,),
      Text(units,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
    ],
  );
}
}



import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
   String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: TextField(
                cursorColor: Colors.blueGrey.shade900,
                style: TextStyle(color: Colors.white, fontSize: 20),
                decoration: const InputDecoration(
                  hintText: 'Enter city name',
                  hintStyle: TextStyle(color: Colors.white, fontSize: 17),
                  filled: true,
                  fillColor: Colors.black,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide.none,
                  ),
                  icon: Icon(
                    Icons.location_city,
                    color: Colors.black87,
                    size: 50.0,
                  ),
                ),
                onChanged: (value) {  
                  cityName = value;
                },
              ),
            ),
            TextButton(
              child: Container(
                width: 160,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: const Text(
                  'Get Weather',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.pop(context, cityName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

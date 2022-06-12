
import 'package:flutter/material.dart';
import '../screens/meal_detail_screen.dart';
import '../modelssss/meals.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String id;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Afford affordability;


  const MealItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.complexity,
    required this.affordability,
  });
  // ignore: non_constant_identifier_names
  String get  ComplexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
      case Complexity.Challenging:
        return 'Chellenging';
      case Complexity.Hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }
  String get affordabilityText {
    switch (affordability) {
      case Afford.Affordable:
        return 'Affordable';
      case Afford.Pricey:
        return 'Pricey';
      case Afford.Luxurious:
        return 'Luxurious';
      default:
        return 'Unknown';
    }
  }
  

  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(MealDetailScreen.routeNAme,arguments:id ).then((result) {
      if(result!=null){
        // removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap:()=> selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.noly(15),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: width,
                    fit: BoxFit.cover,
                  ),
                ),
                
              ],
            ),
            SizedBox(
              
              height: 100,
              child: Column(
                
                
                children:<Widget>[ 
                  Container(
                    margin: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    width: width,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  const SizedBox(
                    height: 1.5,
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.schedule,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text('$duration'),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.work,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(ComplexityText),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.attach_money
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(affordabilityText),
                      ],
                    ),
                  ],
                ),]
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CashbackItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.topLeft,

      margin: EdgeInsets.all(7),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width / 1.78,
            height: height / 10.15,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://cdn.gobankingrates.com/wp-content/uploads/2021/06/iStock-1205217071-2-e1635785197203.jpg?quality=75&w=800'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const <Widget>[
                  Icon(Icons.star, size: 15, color: Color(0xFFFF0707)),
                  Icon(Icons.star, size: 15, color: Color(0xFFFF0707)),
                  Icon(Icons.star, size: 15, color: Color(0xFFFF0707)),
                  Icon(Icons.star, size: 15, color: Color(0xFFFF0707)),
                  Icon(Icons.star_border, size: 15, color: Color(0xFFFF0707)),
                  Text(
                    ' 4.0',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF0707)),
                  ),
                  SizedBox(width: 4),
                  Text('(193 отзыва)',
                      style: TextStyle(color: Color(0xFF313131), fontSize: 12)),
                ],
              ),
              
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Walmart',
                style: TextStyle(color: Color(0xFF313131), fontSize: 13),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}

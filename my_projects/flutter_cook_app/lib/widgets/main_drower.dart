import 'package:flutter/material.dart';
import '../screens/filters_creen.dart';

class MainDrower extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, VoidCallback tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap:tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              'Cooking up!',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: Theme.of(context).primaryColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          buildListTile(
            'Meals',
            Icons.restaurant,
            (){Navigator.of(context).pushReplacementNamed('/');}
          ),
          buildListTile(
            'Filters',
            Icons.settings,
            (){Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName);}
          ),
        ],
      ),
    );
  }
}

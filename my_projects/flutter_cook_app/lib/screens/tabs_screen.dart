import 'package:flutter/material.dart';
import '../modelssss/meals.dart';
import '../widgets/main_drower.dart';
import './favourites_screen.dart';
import './categories_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  TabsScreen(this.favoriteMeals);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  
  late List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages=[
    {
      'page': categoriesScreen(),
      'title': 'Categories',
    },
    {
      'page': FavouriteScreen(widget.favoriteMeals),
      'title': 'Your Favourite',
    }
  ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(_pages[_selectedPageIndex]['title']as String),
        ),
        drawer: MainDrower(),
        body: _pages[_selectedPageIndex]['page']as Widget,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          backgroundColor: Colors.blueGrey,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.white70,
          currentIndex: _selectedPageIndex,
          // type: BottomNavigationBarType.fixed ,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: const Icon(Icons.star),
              label: 'Favorite',
            ),
          ],
        ),
      ),
    );
  }
}

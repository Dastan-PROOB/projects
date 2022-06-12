import 'package:flutter/material.dart';
import '../widgets/main_drower.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Map<String,bool> currentFilters;
  final Function saveFilters;
  const FiltersScreen(this.currentFilters,this.saveFilters);
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _isVegetarian = false;
  bool _isVegan = false;
  bool _lactoseFree = false;
@override
  initstate(){

    _glutenFree=widget.currentFilters['gluten']!;
    _isVegetarian=widget.currentFilters['vegetarian']!;
    _isVegan=widget.currentFilters['vegan']!;
    _lactoseFree=widget.currentFilters['lactose']!;
    super.initState();
  }

  Widget _buildSwitches(
    String title,
    String subtitle,
    bool value,
    Function(bool) updateValue,
  ) {
    return SwitchListTile(
      title: Text(title),
      value: value,
      subtitle: Text(subtitle),
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Your Filters'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                final selectedFilters = {
                  'gluten': _glutenFree,
                  'lactose': _lactoseFree,
                  'vegan': _isVegan,
                  'vegetarian': _isVegetarian,
                };
                widget.saveFilters(selectedFilters);
              },
              icon: const Icon(Icons.save))
        ],
      ),
      drawer: MainDrower(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selection',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
              child: ListView(
            children: <Widget>[
              _buildSwitches(
                  'Gluten-free', 'Only include gluten-free meals', _glutenFree,
                  (asd) {
                setState(() {
                  _glutenFree = asd;
                });
              }),
              _buildSwitches(
                  'Vegetarian', 'Only include vegetarian meals', _isVegetarian,
                  (asd) {
                setState(() {
                  _isVegetarian = asd;
                });
              }),
              _buildSwitches('Vegan', 'Only include vegan meals', _isVegan,
                  (asd) {
                setState(() {
                  _isVegan = asd;
                });
              }),
              _buildSwitches('Lactose-free', 'Only include lactose-free meals',
                  _lactoseFree, (asd) {
                setState(() {
                  _lactoseFree = asd;
                });
              }),
            ],
          ))
        ],
      ),
    );
  }
}

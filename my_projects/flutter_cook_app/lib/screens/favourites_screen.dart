

import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../modelssss/meals.dart';

class FavouriteScreen extends StatelessWidget {
  final List<Meal> favouriteEda;

  FavouriteScreen(this.favouriteEda);
  @override
  Widget build(BuildContext context) {
    if (favouriteEda.isEmpty) {
      return Center(
        child: Text('You have no favourites yet'),
      );
    }
    else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteEda[index].id,
            title: favouriteEda[index].title,
            imageUrl: favouriteEda[index].imageUrl,
            duration: favouriteEda[index].duration,
            complexity: favouriteEda[index].complexity,
            affordability: favouriteEda[index].affordability,
          );
        },
        itemCount: favouriteEda.length,
      );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:recipe_notebook/utilities/meal_name.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: const [
          MealName('Ravioli'),
          MealName('Spaghetti'),
        ],
      ),
    );
  }
}

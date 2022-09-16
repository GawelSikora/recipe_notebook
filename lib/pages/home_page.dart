import 'package:flutter/material.dart';
import 'package:recipe_notebook/utilities/background.dart';
import 'package:recipe_notebook/utilities/meal_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

var mealName = '';

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      appBar: AppBar(),
      body: Stack(
        children: [
          const Background3(),
          ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              MealName(mealName, 'Joanna'),
              const MealName('Spaghetti', 'Barbara'),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}

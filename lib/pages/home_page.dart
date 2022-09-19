import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_notebook/cubit/main_cubit.dart';
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
          BlocBuilder<MainCubit, MainState>(
            builder: (context, state) {
              final items = state.items;
              return ListView(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  for (final item in items) MealName(item.mealName, 'Joanna'),
                  const MealName('Spaghetti', 'Barbara'),
                  const SizedBox(
                    height: 50,
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

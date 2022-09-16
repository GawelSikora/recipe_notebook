import 'dart:async';

import 'package:flutter/material.dart';
import 'package:recipe_notebook/pages/single_recipe_page.dart';

class MealName extends StatefulWidget {
  const MealName(this.mealName, this.userName, {super.key});

  final String userName;

  final String mealName;

  @override
  State<MealName> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MealName> {
  var isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = true;
        });
        Timer(const Duration(milliseconds: 250), (() {
          setState(() {
            isPressed = false;
          });
        }));
        Timer(const Duration(milliseconds: 500), (() {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => SingleRecipePage(widget.mealName)));
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: AnimatedContainer(
          decoration: BoxDecoration(
            border: Border.all(width: 2),
            boxShadow: isPressed
                ? [
                    const BoxShadow(
                      color: Colors.white10,
                      offset: Offset(-3, -3),
                      blurRadius: 2,
                      spreadRadius: 0.50,
                    ),
                    const BoxShadow(
                      color: Colors.white30,
                      offset: Offset(3, 3),
                      blurRadius: 2,
                      spreadRadius: 1.0,
                    ),
                  ]
                : [],
          ),
          duration: const Duration(milliseconds: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(
                image: AssetImage('assets/images/pizza.jpg'),
                height: 70,
              ),
              Column(
                children: [
                  Text(
                    widget.mealName,
                    style: TextStyle(fontSize: 27, color: Colors.red[800]),
                  ),
                  Text(
                    widget.userName,
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

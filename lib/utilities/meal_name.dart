import 'package:flutter/material.dart';

class MealName extends StatefulWidget {
  const MealName(this.mealName, {super.key});

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
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        color: isPressed ? Colors.blue : Colors.deepOrange,
        child: Text(widget.mealName),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:recipe_notebook/utilities/background.dart';

class SingleRecipePage extends StatefulWidget {
  const SingleRecipePage(this.mealName, {super.key});
  final String mealName;

  @override
  State<SingleRecipePage> createState() => _SingleRecipePageState();
}

class _SingleRecipePageState extends State<SingleRecipePage> {
  @override
  Widget build(BuildContext context) {
    final mealName = widget.mealName;
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Center(
            child: Text(' $mealName', style: const TextStyle(fontSize: 15))),
      ),
      endDrawer: Drawer(
          backgroundColor: Colors.green[300],
          semanticLabel: 'Ingredients',
          child: SafeArea(
            child: SizedBox(
              child: Stack(
                children: [
                  const Background3(),
                  ListView(
                    children: const [
                      Center(
                        child: Text(
                          'Ingredients',
                          style: TextStyle(
                              fontSize: 25, fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Ingredients',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
      body: Stack(
        children: [
          const Background3(),
          ListView(
            children: [
              const Image(
                image: AssetImage('assets/images/pizza.jpg'),
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                    child: Text(
                  widget.mealName,
                  style: const TextStyle(
                      fontSize: 20, fontStyle: FontStyle.italic),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

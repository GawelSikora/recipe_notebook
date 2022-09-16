import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, crossAxisSpacing: 0, mainAxisSpacing: 0),
        itemBuilder: (context, index) {
          return const Image(image: AssetImage('assets/images/veg.png'));
        });
  }
}

class Background2 extends StatelessWidget {
  const Background2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, crossAxisSpacing: 0, mainAxisSpacing: 0),
        itemBuilder: (context, index) {
          return const Image(image: AssetImage('assets/images/wood8.jpg'));
        });
  }
}

class Background3 extends StatelessWidget {
  const Background3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, crossAxisSpacing: 0, mainAxisSpacing: 0),
        itemBuilder: (context, index) {
          return const Image(image: AssetImage('assets/images/paper4.jpg'));
        });
  }
}

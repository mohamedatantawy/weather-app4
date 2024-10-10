import 'package:flutter/material.dart';
import 'package:weatherapp6/Views/widget/textfieldLoc.dart';

class Searchview extends StatelessWidget {
  const Searchview({super.key});
  static String id = 'seach home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 0,
        title: const Text(
          'My Weather',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
         decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Theme.of(context).colorScheme.secondary,
          Colors.white,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Enter your location',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Textfieldloc(),
          ],
        ),
      ),
    );
  }
}

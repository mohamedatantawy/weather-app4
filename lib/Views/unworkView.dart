import 'package:flutter/material.dart';
import 'package:weatherapp6/constant.dart';

class Unworkview extends StatelessWidget {
  const Unworkview({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: NetworkImage(
                  kimagemain,
                ),
                fit: BoxFit.cover),
            gradient: LinearGradient(colors: [
              Theme.of(context).colorScheme.secondary,
              Colors.white,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(18),
                  gradient: const LinearGradient(colors: [
                    Colors.red,
                    Colors.white,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  'No there are any weather \nGO to search and put your location ',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

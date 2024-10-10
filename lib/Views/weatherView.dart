import 'package:flutter/material.dart';
import 'package:weatherapp6/models/weatherModel.dart';

class Weatherview extends StatelessWidget {
  const Weatherview({super.key, required this.weathermodel});
  final Weathermodel weathermodel;
  @override
  Widget build(BuildContext context) {
    return Container(
//color: Theme.of(context).colorScheme.secondary,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        weathermodel.getThemeColor().shade500,
        weathermodel.getThemeColor().shade100,
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            weathermodel.city,
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
          const Text(
            'updata',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            '${weathermodel.date.year}-${weathermodel.date.month}-${weathermodel.date.day}',
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          Text(
            '${weathermodel.temp.round()}',
            style: const TextStyle(
              fontSize: 100,
            ),
          ),
          Text(
            '${weathermodel.desc}',
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    'min',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    '${weathermodel.mimt.round()}',
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  const Text(
                    'max',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                  Text(
                    '${weathermodel.maxt.round()}',
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}

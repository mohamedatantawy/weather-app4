import 'package:flutter/material.dart';

class Weathermodel {
  final dynamic city;
  final DateTime date;
  final double temp;
  // final dynamic image;
  final double maxt;
  final double mimt;
  final dynamic desc;

  Weathermodel(
      { //required this.image,
      required this.city,
      required this.date,
      required this.temp,
      required this.maxt,
      required this.mimt,
      required this.desc});
  factory Weathermodel.fromJson(json) {
    // var data = json['forecast']['forecastday'][0]['day'];
    return Weathermodel(
        //  image: json['current']['condition']['icon'],
        city: json['location']['name'],
        date: DateTime.parse(json['current']['last_updated']),
        temp: json['current']['temp_c'],
        maxt: json['forecast']['forecastday'][0]['day']["maxtemp_c"],
        mimt: json['forecast']['forecastday'][0]['day']["mintemp_c"],
        desc: json['current']['condition']['text']);
  }

  
  MaterialColor getThemeColor() {
    if (desc == 'Sunny' || desc == 'Clear' ||  desc == 'partly cloudy') {
      return Colors.orange;
    } else if (
        
        desc == 'Blizzard' ||  desc == 'Patchy snow possible'  ||  desc == 'Patchy sleet possible' || desc == 'Patchy freezing drizzle possible' || desc == 'Blowing snow') {
      return Colors.blue;
    } else if (desc == 'Freezing fog' || desc == 'Fog' ||  desc == 'Heavy Cloud' || desc == 'Mist' || desc == 'Fog') {
      return Colors.blueGrey;
    } else if (desc == 'Patchy rain possible' ||
        desc == 'Heavy Rain' ||
        desc == 'Showers	') {
      return Colors.blue;
    } else if (desc == 'Thundery outbreaks possible' || desc == 'Moderate or heavy snow with thunder' || desc == 'Patchy light snow with thunder'|| desc == 'Moderate or heavy rain with thunder' || desc == 'Patchy light rain with thunder' ) {
      return Colors.deepPurple;
    } else {
      return Colors.orange;
    }
  }
}

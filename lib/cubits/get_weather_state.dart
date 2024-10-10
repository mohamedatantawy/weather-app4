import 'package:weatherapp6/models/weatherModel.dart';

class GetWeatherState {}

class GetWeatherStateinitial extends GetWeatherState {}

class GetWeatherStateSucess extends GetWeatherState {
  Weathermodel weathermodel;
  GetWeatherStateSucess({required this.weathermodel});
}

class GetWeatherStatefailing extends GetWeatherState {}

class GetWeatherStateNothing extends GetWeatherState {}

class GetWeatherStateloading extends GetWeatherState {}

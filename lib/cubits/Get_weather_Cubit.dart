import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp6/cubits/get_weather_state.dart';
import 'package:weatherapp6/models/weatherModel.dart';
import 'package:weatherapp6/services/weather_service.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(GetWeatherStateinitial());
  WeatherService weatherService = WeatherService();
  Weathermodel? weathermodel;
  void getweather({required String namecity}) async {
    emit(GetWeatherStateloading());
    try {
      weathermodel = await weatherService.getdata(city: namecity);
      emit(GetWeatherStateSucess(weathermodel: weathermodel!));
    } on Exception catch (e) {
      emit(GetWeatherStatefailing());
    }
  }
}

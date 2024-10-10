import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weatherapp6/models/weatherModel.dart';

class WeatherService {
  final dio = Dio();
  final String http = 'http://api.weatherapi.com/v1';
  final String api = 'fb5e902cbb744fb8a87141231240508';
  final String path = '/forecast.json';

  Future<Weathermodel> getdata({required String city}) async {
    try {
      final Response response = await dio.get(
          '$http$path?key=$api&q=$city');
      //
//http://api.weatherapi.com/v1/forecast.json?key=fb5e902cbb744fb8a87141231240508&q=London

      Weathermodel weathermodel =
          Weathermodel.fromJson(response.data);
        return weathermodel;
     
        
      
    } on DioException catch (e) {
      final String ermassage =
          e.response?.data['error']['message'] ?? 'oops there is an error';
      throw Exception(ermassage);
    } catch (e) {
      log(e.toString());
      throw Exception('oops ,there are error ');
    }
  }
}

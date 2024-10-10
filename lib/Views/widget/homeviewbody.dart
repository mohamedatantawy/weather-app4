import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp6/Views/UnworkView.dart';
import 'package:weatherapp6/Views/failureView.dart';
import 'package:weatherapp6/Views/loadingview.dart';
import 'package:weatherapp6/Views/weatherView.dart';
import 'package:weatherapp6/cubits/Get_weather_Cubit.dart';
import 'package:weatherapp6/cubits/get_weather_state.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeatherCubit, GetWeatherState>(
      builder: (context, state) {
        if (state is GetWeatherStateloading) {
          return const loadingView();
        } else if (state is GetWeatherStateSucess) {
          return Weatherview(
            weathermodel: state.weathermodel,
          );
        } else if (state is GetWeatherStatefailing) {
          return const  failureViewdd();
        } else {
          return const Unworkview();
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp6/Views/HomeView.dart';
import 'package:weatherapp6/Views/openvView.dart';
import 'package:weatherapp6/Views/seachView.dart';
import 'package:weatherapp6/cubits/Get_weather_Cubit.dart';
import 'package:weatherapp6/cubits/get_weather_state.dart';

void main() {
  runApp(BlocProvider<GetWeatherCubit>(
      create: (context) => GetWeatherCubit(), child: const WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) => MaterialApp(
          routes: {
            Openvview.id: (context) => const Openvview(),
            Homeview.id: (context) => const Homeview(),
            Searchview.id: (context) => const Searchview(),
          },
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
               primarySwatch: BlocProvider.of<GetWeatherCubit>(context).weathermodel == null
               ? Colors.blue
               : BlocProvider.of<GetWeatherCubit>(context)
               .weathermodel!
               .getThemeColor()

            ),
            primaryColor:Colors.blue ,
           
            // BlocProvider.of<GetWeatherCubit>(context).weathermodel == null
            //     ? Colors.amber
            //     : BlocProvider.of<GetWeatherCubit>(context)
            //         .weathermodel!
            //         .getThemeColor()
          ),
          initialRoute: Openvview.id,
        ),
      );
    });
  }
}

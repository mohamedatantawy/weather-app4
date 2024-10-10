import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp6/cubits/Get_weather_Cubit.dart';

class Textfieldloc extends StatelessWidget {
  const Textfieldloc({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) async {
        BlocProvider.of<GetWeatherCubit>(context).getweather(namecity: value);
        Navigator.pop(context);
      },
      decoration: InputDecoration(
        hintText: 'Enter Your location',
        labelText: 'Your location',
        prefixIcon: const Icon(Icons.search),
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        border: buildborder(),
        enabledBorder: buildborder(
          Colors.green,
        ),
        focusedBorder: buildborder(
          Colors.green,
        ),
      ),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(
        color: color ?? Colors.orange,
      ),
    );
  }
}

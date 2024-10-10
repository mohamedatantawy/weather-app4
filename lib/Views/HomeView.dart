import 'package:flutter/material.dart';
import 'package:weatherapp6/Views/seachView.dart';
import 'package:weatherapp6/Views/widget/homeviewbody.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});
  static final id = 'seach view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Theme.of(context).colorScheme.secondary,
        centerTitle: true,
        title: const Text(
          'My Weather',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Searchview.id);
            },
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
          )
        ],
      ),
      body: const Homeviewbody(),
    );
  }
}

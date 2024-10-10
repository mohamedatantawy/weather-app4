import 'package:flutter/material.dart';
import 'package:weatherapp6/Views/HomeView.dart';
import 'package:weatherapp6/constant.dart';

class Openvview extends StatelessWidget {
  const Openvview({super.key});
  static final id = 'openview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Image.network(
              kimagemain,
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Positioned(
            bottom: 100,
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              margin: EdgeInsets.symmetric(horizontal: 18),
              color: const Color.fromARGB(255, 193, 8, 8),
              child: ListTile(
                onTap: () {
                  Navigator.pushReplacementNamed(context, Homeview.id);
                },
                title: const Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      'Get Start',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      'Weather',
                      style: TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      'Forecast',
                      style: TextStyle(
                        fontSize: 80,
                        color: Color.fromARGB(255, 218, 41, 38),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//https://t3.ftcdn.net/jpg/05/51/95/26/360_F_551952602_vp8d4v2nDYo8UExEpxFOtMMv8uOzPaq9.jpg
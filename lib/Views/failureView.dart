import 'package:flutter/material.dart';

class failureViewdd extends StatelessWidget {
  const failureViewdd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.orange,
        Colors.red,
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: const Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: const Text(
            'oops , there are problem in your internet,try again.',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class loadingView extends StatelessWidget {
  const loadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Theme.of(context).colorScheme.secondary,
        Colors.red
      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}


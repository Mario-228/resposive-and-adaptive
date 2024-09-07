import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 5 / 1,
        child: Container(
          width: double.infinity,
          color: Colors.green,
        ),
      ),
    );
  }
}

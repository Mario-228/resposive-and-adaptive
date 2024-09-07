import 'package:flutter/material.dart';

class ShowInforamtion extends StatelessWidget {
  const ShowInforamtion({super.key, required this.number});
  final String number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Number: $number", style: const TextStyle(fontSize: 30)),
      ),
    );
  }
}

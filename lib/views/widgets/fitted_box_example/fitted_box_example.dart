import 'package:flutter/material.dart';

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        color: Colors.green,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
          itemBuilder: (context, index) =>
              //the problem is the gridview divides the screen into 3 columns and each column is 1/3 of the screen
              // so the image will be 1/3 of the screen
              //to make the image fit the screen we use the fittedbox
              FittedBox(
            fit: BoxFit.fill,
            child: Image.network(
              "https://picsum.photos/id/$index/200/300",
            ),
          ),
          itemCount: 6,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}

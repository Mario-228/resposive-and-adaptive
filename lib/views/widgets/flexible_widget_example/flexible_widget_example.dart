import 'package:flutter/material.dart';

class FlexibleWidgetExample extends StatelessWidget {
  const FlexibleWidgetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          // Flexible(child: Icon(Icons.abc, size: 300.0)), => must wrap the icon with fittedbox
          // Flexible(child: FlutterLogo(size:300.0),),=> you don't need to wrap the widget with fittedbox
          // FittedBox(child: Icon(Icons.abc, size: 300.0),fit: BoxFit.scaleDown,) => scale down mean the icon will be smaller or the same size
          const Flexible(
            child: FittedBox(
              child: Icon(Icons.abc, size: 300.0),
            ),
          ),
          Container(
            height: 150.0,
            color: Colors.blue,
          ),
          Container(
            height: 150.0,
            color: Colors.green,
          ),
          Container(
            height: 150.0,
            color: Colors.black,
          ),
          Container(
            height: 150.0,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

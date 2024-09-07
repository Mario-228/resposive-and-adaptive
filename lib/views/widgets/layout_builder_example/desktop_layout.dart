import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/widgets/layout_builder_example/show_information.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({
    super.key,
  });

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  late int number;
  @override
  void initState() {
    super.initState();
    number = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  number = index + 1;
                });
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                color: number == index + 1 ? Colors.grey[400] : Colors.amber,
                height: 50.0,
                child: Text(
                  "${index + 1}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: 20,
          ),
        ),
        Expanded(
          child: ShowInforamtion(
            number: number.toString(),
          ),
        ),
      ],
    );
  }
}

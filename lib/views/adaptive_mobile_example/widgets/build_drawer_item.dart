import 'package:flutter/material.dart';

class BuildDrawerItem extends StatelessWidget {
  const BuildDrawerItem({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            title,
          ),
        ),
      ),
      leading: Icon(icon),
    );
  }
}

import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: isActive
          ? CircleAvatar(
              radius: 32,
              backgroundColor: color.withOpacity(0.3),
            )
          : CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
    );
  }
}

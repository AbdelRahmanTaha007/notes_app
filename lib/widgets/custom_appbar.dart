import 'package:flutter/material.dart';
import 'package:todu_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        customSearchIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}

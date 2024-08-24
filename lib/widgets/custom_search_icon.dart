import 'package:flutter/material.dart';

class customSearchIcon extends StatelessWidget {
  customSearchIcon({
    super.key,
    required this.icon, this.onPressed,
  });
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white.withOpacity(0.05)),
      padding: EdgeInsets.all(5),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

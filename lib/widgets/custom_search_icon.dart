
import 'package:flutter/material.dart';

class customSearchIcon extends StatelessWidget {
  const customSearchIcon({
    super.key,
  });

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
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

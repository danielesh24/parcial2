import 'package:flutter/material.dart';

class DColor extends StatelessWidget {
  const DColor({
    Key? key,
    required this.fillColor,
    // by default we set it false
    this.isSelected = false,
  }) : super(key: key);
  final Color fillColor;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          // left and right padding 8
          EdgeInsets.symmetric(horizontal: 20.0 / 2.5),
      padding: EdgeInsets.all(3),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected
              ? Color.fromARGB(255, 241, 237, 237)
              : Colors.transparent,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: fillColor,
        ),
      ),
    );
  }
}

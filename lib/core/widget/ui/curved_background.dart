import 'package:flutter/material.dart';

class CurvedBackground extends StatelessWidget {
  const CurvedBackground({
    Key? key,
    this.height = 240,
  }) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Transform.scale(
        scale: 1.4,
        child: Container(
          height: height,
          transform: Matrix4.translationValues(0, -40, 0),
          decoration: BoxDecoration(
            color: Colors.indigo[900],
            borderRadius: BorderRadius.vertical(
              bottom: Radius.elliptical(MediaQuery.of(context).size.width, 160),
            ),
          ),
        ),
      ),
    );
  }
}

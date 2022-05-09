import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  const FormLabel(
    this.label,
    this.reqLevel, {
    Key? key,
  }) : super(key: key);
  final String label;
  final Label reqLevel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Builder(
          builder: (context) {
            switch (reqLevel) {
              case Label.mandatory:
                return const Tooltip(
                    message: "Required",
                    child: Icon(Icons.radio_button_on,
                        color: Colors.green, size: 16));
              case Label.recomended:
                return const Tooltip(
                    message: "Recomended",
                    child: Icon(Icons.recommend, color: Colors.blue, size: 16));
              case Label.optional:
                return const Tooltip(
                    message: "Optional",
                    child:
                        Icon(Icons.trip_origin, color: Colors.amber, size: 16));
              default:
                return const Tooltip(
                    message: "Optional",
                    child:
                        Icon(Icons.trip_origin, color: Colors.amber, size: 16));
            }
          },
        ),
        const SizedBox(width: 8),
        Text(label),
      ],
    );
  }
}

enum Label { mandatory, recomended, optional }

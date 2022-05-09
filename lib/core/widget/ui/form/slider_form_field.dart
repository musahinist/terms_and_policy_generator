import 'package:flutter/material.dart';

import 'form_label.dart';

class SliderFormField extends StatefulWidget {
  const SliderFormField({
    Key? key,
    required this.label,
    required this.onDelete,
    this.initialValue,
    this.initialLevel = 50,
  }) : super(key: key);
  final VoidCallback onDelete;

  final FormLabel label;
  final String? initialValue;
  final double initialLevel;

  @override
  State<SliderFormField> createState() => _SliderFormFieldState();
}

class _SliderFormFieldState extends State<SliderFormField> {
  late double value;
  @override
  void initState() {
    super.initState();
    value = widget.initialLevel;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextFormField(
                initialValue: widget.initialValue,
                decoration: InputDecoration(
                  label: widget.label,
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: widget.onDelete,
                      ),
                      IconButton(
                        icon: const Icon(Icons.visibility),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

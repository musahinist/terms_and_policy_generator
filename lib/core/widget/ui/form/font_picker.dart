import 'package:flutter/material.dart';

class FontPicker extends StatefulWidget {
  const FontPicker({Key? key}) : super(key: key);

  @override
  State<FontPicker> createState() => _FontPickerState();
}

class _FontPickerState extends State<FontPicker> {
  final List<String> _fonts = <String>[
    'Arial',
    'Courier',
    'Courier New',
    'Georgia',
    'Helvetica',
    'Times New Roman',
    'Verdana',
  ];
  String? _selectedFont = "Arial";
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedFont,
      items: _fonts.map<DropdownMenuItem<String>>((font) {
        return DropdownMenuItem<String>(
          value: font,
          child: Text(font),
        );
      }).toList(),
      onChanged: (font) {
        setState(() {
          _selectedFont = font;
        });
      },
    );
  }
}

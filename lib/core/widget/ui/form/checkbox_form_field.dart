import 'package:flutter/material.dart';

class CheckBoxFormField extends StatefulWidget {
  const CheckBoxFormField({
    Key? key,
    required this.labelText,
    this.initialValue,
    required this.onChanged,
  }) : super(key: key);
  final String labelText;
  final String? initialValue;
  final ValueSetter onChanged;

  @override
  State<CheckBoxFormField> createState() => _CheckBoxFormFieldState();
}

class _CheckBoxFormFieldState extends State<CheckBoxFormField> {
  bool isChecked = false;
  late final TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.initialValue);
    isChecked =
        widget.initialValue != null && widget.initialValue != "" ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        TextFormField(
          controller: controller,
          enabled: isChecked,
          decoration: InputDecoration(
            hintText: "Class",
            labelText: widget.labelText,
            suffixIcon: const SizedBox(),
          ),
          onChanged: (String value) {
            widget.onChanged(value);
          },
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Checkbox(
            activeColor: Colors.purple,
            value: isChecked,
            onChanged: (value) {
              isChecked = value!;
              controller.text = value ? "Class" : '';
              widget.onChanged(controller.text);
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}

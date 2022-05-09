import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../util/show_overlay.dart';
import 'form_label.dart';
import 'input_mask.dart';

class DateFormField extends StatefulWidget {
  const DateFormField({
    Key? key,
    this.initialValue,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  final FormLabel label;
  final String? initialValue;
  final ValueSetter<String> onChanged;

  @override
  State<DateFormField> createState() => _DateFormFieldState();
}

class _DateFormFieldState extends State<DateFormField> {
  late final TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    controller.clear();
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.datetime,
      textInputAction: TextInputAction.next,
      inputFormatters: [DateInputFormatter()],
      decoration: InputDecoration(
        label: widget.label,
        hintText: "MM/dd/yyyy",
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_month),
          onPressed: () async {
            DateTime? date = await Show.cupertinoDatePickerModal(context);
            if (date != null) {
              controller.text = DateFormat("MM/dd/yyyy").format(date);
              widget.onChanged.call(controller.text);
            }
          },
        ),
      ),
      onChanged: (String value) {
        widget.onChanged.call(controller.text);
        // if (value.isEmpty) {
        //   widget.onChanged?.call(null);
        // } else {
        //   widget.onChanged?.call(DateTime.tryParse(value)!);
        // }
      },
    );
  }
}

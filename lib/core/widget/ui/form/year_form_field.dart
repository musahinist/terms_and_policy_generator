import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../util/show_overlay.dart';

class YearFormField extends StatefulWidget {
  const YearFormField(
      {Key? key,
      this.initialValue,
      required this.label,
      required this.onChanged})
      : super(key: key);

  final Widget label;
  final String? initialValue;
  final ValueSetter<String> onChanged;

  @override
  State<YearFormField> createState() => _YearFormFieldState();
}

class _YearFormFieldState extends State<YearFormField> {
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
      keyboardType: TextInputType.number, textInputAction: TextInputAction.next,
      //  maxLength: 4,
      maxLengthEnforcement: MaxLengthEnforcement.enforced,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(4),
      ],
      decoration: InputDecoration(
        label: widget.label,
        hintText: "yyyy",
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_month),
          onPressed: () async {
            String? year = await Show.cupertinoYearPickerModal(context);
            if (year != null) {
              controller.text = year;
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

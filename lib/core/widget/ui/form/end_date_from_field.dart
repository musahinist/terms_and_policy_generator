import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../util/show_overlay.dart';
import 'form_label.dart';
import 'input_mask.dart';

class EndDateFormField extends StatefulWidget {
  const EndDateFormField({
    Key? key,
    this.initialValue,
    required this.label,
    required this.onChanged,
  }) : super(key: key);

  final FormLabel label;
  final ValueSetter<String> onChanged;
  final String? initialValue;
  @override
  State<EndDateFormField> createState() => _EndDateFormFieldState();
}

class _EndDateFormFieldState extends State<EndDateFormField> {
  late final TextEditingController controller;
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.initialValue);
  }

  bool isPresent = false;
  @override
  void dispose() {
    controller.clear();
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isPresent) {
          isPresent = false;
          controller.text = "";
          setState(() {});
        }
      },
      child: TextFormField(
        controller: controller,
        enabled: !isPresent,
        keyboardType: TextInputType.datetime,
        inputFormatters: [DateInputFormatter()],
        decoration: InputDecoration(
          label: widget.label,
          hintText: "MM/dd/yyyy",
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (!isPresent) const Text('Present'),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Checkbox(
                      activeColor: Colors.purple,
                      // contentPadding: EdgeInsets.zero,
                      // title: const Text("Present"),
                      value: isPresent,
                      onChanged: (bool? value) {
                        isPresent = value!;
                        controller.text = value ? 'Present' : "";
                        setState(() {});
                      },
                    ),
                  ),
                  if (!isPresent)
                    const SizedBox(
                      height: 16,
                      width: 4,
                      child: VerticalDivider(
                        color: Colors.black,
                      ),
                    ),
                ],
              ),
              if (!isPresent)
                IconButton(
                  icon: const Icon(Icons.calendar_month),
                  onPressed: () async {
                    DateTime? date =
                        await Show.cupertinoDatePickerModal(context);
                    if (date != null) {
                      controller.text = DateFormat("MM/dd/yyyy").format(date);
                      widget.onChanged.call(controller.text);
                    }
                  },
                ),
            ],
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
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../core/widget/ui/form/date_form_field.dart';
import '../core/widget/ui/form/form_label.dart';

class Step1 extends StatelessWidget {
  const Step1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'App name',
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Contact information',
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Personally identifiable information you collect',
                ),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: 'Privacy policy',
                ),
                items: const <String>['Privacy policy', 'Terms of service']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  print(value);
                },
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: 'Mobile OS',
                ),
                items: const <String>['Privacy policy', 'Terms of service']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  print(value);
                },
              ),
              const SizedBox(height: 12),
              DateFormField(
                label:
                    const FormLabel("Policy effective date", Label.mandatory),
                onChanged: (String? value) {
                  print(value);
                },
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField(
                decoration: const InputDecoration(
                  labelText: 'Owner Type',
                ),
                items: const <String>['Privacy policy', 'Terms of service']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  print(value);
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Owner name',
                ),
              ),
              // const SizedBox(height: 24),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, '/result');
              //   },
              //   child: const Text("Countunie"),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

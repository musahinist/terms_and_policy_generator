import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Policy Generator'),
      ),
      body: Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'App name',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Contact information',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Personally identifiable information you collect',
                ),
              ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

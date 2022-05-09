import 'package:flutter/material.dart';

class Step2 extends StatelessWidget {
  const Step2({
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
            children: const <Widget>[
              ListTile(
                title: Text('Privacy policy'),
              ),
              ListTile(
                title: Text('Privacy policy'),
              ),
              ListTile(
                title: Text('Privacy policy'),
              ),
              ListTile(
                title: Text('Privacy policy'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

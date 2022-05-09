import 'package:flutter/material.dart';

class Step2 extends StatelessWidget {
  const Step2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Where will your Privacy Policy be used?"),
          const SizedBox(height: 12),
          Card(
            margin: EdgeInsets.zero,
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
        ],
      ),
    );
  }
}

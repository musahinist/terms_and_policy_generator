import 'package:flutter/material.dart';

class Step0 extends StatelessWidget {
  const Step0({
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
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.web, size: 32),
                  title: const Text('Website'),
                  subtitle: const Text('Privacy Policy for a Website'),
                  onTap: () {},
                ),
                const Divider(height: 0),
                ListTile(
                  leading: const Icon(Icons.phone_iphone, size: 32),
                  title: const Text('Mobile App'),
                  subtitle: const Text('Privacy Policy for a Mobile App'),
                  onTap: () {},
                ),
                const Divider(height: 0),
                ListTile(
                  leading: const Icon(Icons.desktop_mac, size: 32),
                  title: const Text('Desktop App'),
                  subtitle: const Text('Privacy Policy for a Desktop App'),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Step0 extends StatelessWidget {
  const Step0({
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
              ListTile(
                leading: const CircleAvatar(
                    radius: 24, child: Icon(Icons.web, size: 36)),
                title: const Text('Website'),
                subtitle: const Text('Privacy Policy for a Website'),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                    radius: 24, child: Icon(Icons.phone_iphone, size: 32)),
                title: const Text('Mobile App'),
                subtitle: const Text('Privacy Policy for a Mobile App'),
                onTap: () {},
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                    radius: 24, child: Icon(Icons.desktop_mac, size: 32)),
                title: const Text('Desktop App'),
                subtitle: const Text('Privacy Policy for a Desktop App'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

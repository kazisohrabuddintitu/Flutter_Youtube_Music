import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting 1'),
            onTap: () {
              // Add your setting 1 action here
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting 2'),
            onTap: () {
              // Add your setting 2 action here
            },
          ),
          // Add more settings as needed
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'App Drawer',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Handle item 1 click
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Handle item 2 click
            },
          ),
          ListTile(
            title: const Text('Item 3'),
            onTap: () {
              // Handle item 3 click
            },
          ),
        ],
      ),
    );
  }
}

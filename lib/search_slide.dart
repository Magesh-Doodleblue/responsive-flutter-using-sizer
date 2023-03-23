// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class searchWidget extends StatelessWidget {
  const searchWidget({
    Key? key,
    required this.theme,
  }) : super(key: key);

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Search',
          style: theme.textTheme.headlineSmall,
        ),
        const ListTile(
          leading: Icon(Icons.list, color: Colors.white),
          trailing: Text(
            "GFG",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          title: Text(
            "List item ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.list, color: Colors.white),
          trailing: Text(
            "GFG",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          title: Text(
            "List item ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.list, color: Colors.white),
          trailing: Text(
            "GFG",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          title: Text(
            "List item ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.list, color: Colors.white),
          trailing: Text(
            "GFG",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          title: Text(
            "List item ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.list, color: Colors.white),
          trailing: Text(
            "GFG",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          title: Text(
            "List item ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.list, color: Colors.white),
          trailing: Text(
            "GFG",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          title: Text(
            "List item ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.list, color: Colors.white),
          trailing: Text(
            "GFG",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          title: Text(
            "List item ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.list, color: Colors.white),
          trailing: Text(
            "GFG",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          title: Text(
            "List item ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        const ListTile(
          leading: Icon(Icons.list, color: Colors.white),
          trailing: Text(
            "GFG",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          title: Text(
            "List item ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    );
  }
}

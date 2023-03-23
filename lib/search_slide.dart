import 'package:flutter/material.dart';

class searchWidget extends StatelessWidget {
  const searchWidget({
    super.key,
    required this.theme,
  });

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

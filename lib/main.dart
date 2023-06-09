// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'sidebar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: SidebarXExampleApp(),
      );
    });
  }
}

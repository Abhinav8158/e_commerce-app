import 'package:flutter/material.dart';

import 'home_page.dart';
import 'navigationbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ecommerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Navigation(),
      debugShowCheckedModeBanner: false,
    );
  }
}

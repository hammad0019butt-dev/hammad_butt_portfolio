import 'package:flutter/material.dart';
import 'package:hammad_butt/landing_page/home/home_page.dart';
import 'package:hammad_butt/utils/themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hammad Butt',
      debugShowCheckedModeBanner: false,
      theme: webTheme,
      home: HomePage(),
    );
  }
}

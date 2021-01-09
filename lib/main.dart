import 'package:flutter/material.dart';
import 'pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo de plantas',
      theme: ThemeData(
        primaryColor: Color(0xFF0C9869),
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Color(0xFF3C4046)
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage()
    );
  }
}
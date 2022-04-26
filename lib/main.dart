// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:pdf_generator/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Views',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Arial",
        textTheme: const TextTheme(
          button: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
      home: Home(),
    );
  }
}

import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        accentColor: Colors.orangeAccent,
        textTheme: TextTheme(
          body1: TextStyle(fontFamily: 'Open Sans'),
        ),
      ),
      home: InputPage(),
    );
  }
}

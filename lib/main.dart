import 'package:flutter/material.dart';
import 'package:flutterproject/screens/details_screen.dart';
import 'package:flutterproject/screens/firs_screen/body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: DetailsScreen(),
      ),
    );
  }
}

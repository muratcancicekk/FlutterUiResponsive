import 'package:flutter/material.dart';

import 'view/details_page/details_screen.dart';
import 'view/home_page/body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Body(),
      ),
    );
  }
}

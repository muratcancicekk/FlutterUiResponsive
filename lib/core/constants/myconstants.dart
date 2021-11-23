import 'package:flutter/widgets.dart';

class MyConstants extends InheritedWidget {
  static MyConstants of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MyConstants>();

  const MyConstants({Widget child, Key key}) : super(key: key, child: child);

  final String userName = 'Hey Alex,';
  final String categoriesApi = "Categories";
  final String bestSellers = "BESTSELLERS";

  @override
  bool updateShouldNotify(MyConstants oldWidget) => false;
}

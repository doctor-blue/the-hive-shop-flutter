import 'package:flutter/material.dart';
import 'package:flutter_app/components/routes/Routes.dart';
import 'package:flutter_app/components/styles/themes.dart';

void main() {
  runApp(HiveApp());
}

class HiveApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hive Shop',
      theme: baseThemeData(),
      onGenerateRoute: hiveRouteFactory(),
    );
  }
}

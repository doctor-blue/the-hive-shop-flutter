import 'package:flutter/material.dart';
import 'package:flutter_app/components/styles/colors.dart';

import 'styles.dart';

ThemeData baseThemeData() {
  return ThemeData(
    primaryColor: primaryColor,
    accentColor: accentColor,
    primaryColorDark: primaryColorDark,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(headline6: AppBarTextStyle),
    ),
    textTheme: TextTheme(headline1: headLine1, bodyText1: body1TextStyle),
  );
}

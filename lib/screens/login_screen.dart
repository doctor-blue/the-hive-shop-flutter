import 'package:flutter/material.dart';
import 'package:flutter_app/components/routes/Routes.dart';
import 'package:flutter_app/components/styles/colors.dart';
import 'package:flutter_app/components/widgets/hive_button.dart';
import 'package:flutter_app/components/widgets/text_field.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 64),
              Image.asset(
                'assets/images/bee.png',
                width: 64,
                height: 64,
              ),
              SizedBox(height: 32),
              Text(
                'WELCOME\nBACK',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 64),
              HiveTextField("Email", false),
              SizedBox(height: 16),
              HiveTextField("Password", true),
              SizedBox(height: 40),
              HiveButton(
                "SIGN IN",
                width: 172.0,
                color: accentColor,
                textColor: primaryColorDark,
                onPressed: () {
                  _signIn(context);
                },
              ),
              SizedBox(height: 24),
              HiveButton(
                "SIGN UP",
                width: 172.0,
                color: primaryColorDark,
                onPressed: () {
                  _signUp(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  _signIn(BuildContext context) {
    Navigator.pushNamed(context, PRODUCTS);
  }

  _signUp(BuildContext context) {
    Navigator.pushNamed(context, REGISTER);
  }
}

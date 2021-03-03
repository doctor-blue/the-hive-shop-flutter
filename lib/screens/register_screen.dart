import 'package:flutter/material.dart';
import 'package:flutter_app/components/styles/colors.dart';
import 'package:flutter_app/components/widgets/hive_button.dart';
import 'package:flutter_app/components/widgets/text_field.dart';

class Register extends StatefulWidget {
  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  var _isObscure = true;
  var _isRetypeObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 64,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xFF555962),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Center(
          child: Column(
            children: [
              // SizedBox(height: 32),
              Image.asset(
                'assets/images/bee.png',
                width: 64,
                height: 64,
              ),
              SizedBox(height: 32),
              Text(
                'CREATE ACCOUNT',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 64),
              HiveTextField("Email", false),
              SizedBox(height: 16),
              HiveTextField("Password", true),
              SizedBox(height: 16),
              HiveTextField("Retype Password", true),
              SizedBox(height: 40),
              HiveButton(
                "SIGN UP",
                width: 172.0,
                color: primaryColorDark,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}

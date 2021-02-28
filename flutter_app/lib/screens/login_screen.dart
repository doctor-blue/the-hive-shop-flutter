import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  'WELCOME',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF555962),
                    fontSize: 32,
                  ),
                ),
                Text(
                  'BACK',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF555962),
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 64),
                TextFormField(
                  initialValue: '',
                  cursorColor: Color(0xFF555962),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Color(0xFF555962),
                    ),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF555962),
                        width: 3.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF555962),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                TextFormField(
                  obscureText: _isObscure,
                  initialValue: '',
                  cursorColor: Color(0xFF555962),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                      color: Color(0xFF555962),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    labelStyle: TextStyle(
                      color: Color(0xFF555962),
                    ),
                    border: OutlineInputBorder(),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF555962),
                        width: 3.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF555962),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: 172,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFFFFC93C)),
                    onPressed: () {},
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Container(
                  width: 172,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Color(0xFF555962)),
                    onPressed: () {
                      // Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
                      icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off),
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
                SizedBox(height: 16),
                TextFormField(
                  obscureText: _isRetypeObscure,
                  initialValue: '',
                  cursorColor: Color(0xFF555962),
                  decoration: InputDecoration(
                    labelText: 'Retype Password',
                    suffixIcon: IconButton(
                      icon: Icon(_isRetypeObscure
                          ? Icons.visibility
                          : Icons.visibility_off),
                      color: Color(0xFF555962),
                      onPressed: () {
                        setState(() {
                          _isRetypeObscure = !_isRetypeObscure;
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
                    style: ElevatedButton.styleFrom(primary: Color(0xFF555962)),
                    onPressed: () {
                      
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

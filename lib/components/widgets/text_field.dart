import 'package:flutter/material.dart';
import 'package:flutter_app/components/styles/colors.dart';

class HiveTextField extends StatefulWidget {
  final String _label;
  final bool _hasIcon;
  HiveTextField(this._label, this._hasIcon);

  @override
  _HiveTextFieldState createState() => _HiveTextFieldState();
}

class _HiveTextFieldState extends State<HiveTextField> {
  bool _isObscure;

  @override
  Widget build(BuildContext context) {
    if (_isObscure == null) _isObscure = widget._hasIcon;
    return Container(
      child: TextFormField(
        obscureText: _isObscure,
        initialValue: '',
        cursorColor: textColorPrimary,
        decoration: InputDecoration(
          suffixIcon: widget._hasIcon
              ? IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off),
                  color: Color(0xFF555962),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                )
              : null,
          labelText: widget._label,
          labelStyle: TextStyle(
            color: textColorPrimary,
          ),
          border: OutlineInputBorder(),
          fillColor: primaryColor,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primaryColorDark,
              width: 3.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: primaryColorDark,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}

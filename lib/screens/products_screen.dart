import 'package:flutter/material.dart';
import 'package:flutter_app/components/routes/Routes.dart';
import 'package:flutter_app/components/styles/colors.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_circle,color: textColorPrimary,),
          onPressed: () {
            _setting(context);
          },
        ),
        title: Text(
          'The Hive Shop',
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search,color: textColorPrimary,), 
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined,color: textColorPrimary,),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  _setting(BuildContext context) {
    Navigator.pushNamed(context, HIVE_SETTING);
  }
}

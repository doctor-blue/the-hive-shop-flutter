import 'package:flutter/material.dart';
import 'package:flutter_app/components/styles/colors.dart';
import 'package:flutter_app/components/widgets/cart_item.dart';
import 'package:flutter_app/components/widgets/hive_button.dart';
import 'package:flutter_app/models/item_in_cart.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  var a = ['hello', 'bello', 'cello', 'dello', 'ello', 'fello', 'gello'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: textColorPrimary),
          onPressed: () {
            _backStack(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              flex: 7,
              child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, i) {
                  return CartItem(
                    itemInCart: cart[i],
                  );
                },
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Amount be to paid:',
                      style: Theme.of(context).textTheme.bodyText1),
                  Text('aaaaa'),
                ],
              ),
            ),
            HiveButton(
              'BUY',
              width: 300.0,
              color: accentColor,
              textColor: textColorPrimary,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  _backStack(BuildContext context) {
    Navigator.pop(context);
  }
}

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
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
              flex: 10,
              child: ListView.builder(
                itemCount: cart.length,
                itemBuilder: (context, i) {
                  return CartItem(
                    onAmountChange: _reload,
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
                  Text('\$$totalPrice'),
                ],
              ),
            ),
            HiveButton(
              'BUY',
              width: 300.0,
              color: accentColor,
              textColor: textColorPrimary,
              onPressed: () {
                _buy();
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }

  _backStack(BuildContext context) {
    Navigator.pop(context);
  }

  _buy() {
    cart.clear();
    totalPrice = 0.0;
  }

  _reload() {
    setState(() {});
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/models/item_in_cart.dart';

class CartItem extends StatefulWidget {
  final itemInCart;

  CartItem({this.itemInCart});
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Expanded(
            child: Image.network(
              widget.itemInCart.url,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(widget.itemInCart.title),
                Text(widget.itemInCart.price),
                Row(children: [
                  
                ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/components/styles/colors.dart';

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
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (widget.itemInCart.amount > 1) {
                          widget.itemInCart.amount -= 1;
                          setState(() {});
                        }
                      },
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 2, color: textColorPrimary)),
                            child: Icon(
                              Icons.remove,
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("${widget.itemInCart.amount}"),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        widget.itemInCart.amount += 1;
                        setState(() {});
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 2, color: textColorPrimary)),
                          child: Icon(
                            Icons.add,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

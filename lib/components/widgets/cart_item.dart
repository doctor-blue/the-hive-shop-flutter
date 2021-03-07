import 'package:flutter/material.dart';
import 'package:flutter_app/components/styles/colors.dart';
import 'package:flutter_app/models/item_in_cart.dart';

class CartItem extends StatefulWidget {
  final ItemInCart itemInCart;
  final onAmountChange;

  CartItem({this.onAmountChange, this.itemInCart});
  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 8),
        Card(
          child: Row(
            children: [
              Expanded(
                child: Image.network(
                  widget.itemInCart.url,
                  width: double.infinity,
                  height: 130,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      widget.itemInCart.title,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    Text("\$${widget.itemInCart.price}"),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (widget.itemInCart.amount > 1) {
                              widget.itemInCart.amount -= 1;
                              setState(() {
                                totalPrice -= widget.itemInCart.price;
                              });
                              widget.onAmountChange();
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
                            setState(() {
                              totalPrice += widget.itemInCart.price;
                            });
                            widget.onAmountChange();
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
        ),
      ],
    );
  }
}

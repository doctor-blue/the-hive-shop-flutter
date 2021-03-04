import 'package:flutter/material.dart';
import 'package:flutter_app/components/styles/colors.dart';
import 'package:flutter_app/models/product.dart';

class ProductDetail extends StatelessWidget {
  static var productDetailKey = "PRODUCT_DETAIL";
  final Product product;
  ProductDetail(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: textColorPrimary,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Product Detail',
          )),
    );
  }
}

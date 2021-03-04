import 'package:flutter/material.dart';
import 'package:flutter_app/components/routes/Routes.dart';
import 'package:flutter_app/models/product.dart';
import 'package:flutter_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  ProductItem(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, PRODUCT_DETAIL,
              arguments: {ProductDetail.productDetailKey: product});
        },
        child: Card(
          child: Column(
            children: [
              Image.network(
                product.url,
                width: 200,
                height: 130,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                product.title,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                "\$" + product.price.toString(),
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

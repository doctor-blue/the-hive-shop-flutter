import 'package:flutter/material.dart';
import 'package:flutter_app/components/styles/colors.dart';
import 'package:flutter_app/components/widgets/hive_button.dart';
import 'package:flutter_app/models/item_in_cart.dart';
import 'package:flutter_app/models/product.dart';

class ProductDetail extends StatefulWidget {
  static var productDetailKey = "PRODUCT_DETAIL";
  final Product product;

  ProductDetail(this.product);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int productAmount = 0;

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
        ),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          children: [
            Image.network(
              widget.product.url,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.product.title,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 48,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (productAmount > 1) {
                          productAmount -= 1;
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
                    Text("$productAmount"),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        productAmount += 1;
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
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  width: 48,
                ),
                HiveButton(
                  "Add to card",
                  width: 172.0,
                  color: accentColor,
                  onPressed: () {
                    
                  },
                  textColor: textColorPrimary,
                ),
                SizedBox(
                  width: 48,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.product.description,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/components/routes/Routes.dart';
import 'package:flutter_app/components/api/HiveService.dart';
import 'package:flutter_app/components/styles/colors.dart';
import 'package:flutter_app/components/widgets/product_item.dart';
import 'package:flutter_app/models/product.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.account_circle,
            color: textColorPrimary,
          ),
          onPressed: () {},
        ),
        title: Text(
          'The Hive Shop',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: textColorPrimary,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: textColorPrimary,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: FutureBuilder(
        future: getAllProducts(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: Text("Get all product"),
              );
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                Center(
                  child: Text("Some error occured"),
                );
              }
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return ProductItem(Product.fromJson(snapshot.data[index]));
                },
                itemCount: snapshot.data.length,
              );
          }
          return null;
        },
      ),
    );
  }

  _setting(BuildContext context) {
    Navigator.pushNamed(context, HIVE_SETTING);
  }
}

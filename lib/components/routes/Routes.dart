import 'package:flutter/material.dart';
import 'package:flutter_app/screens/cart_screen.dart';
import 'package:flutter_app/screens/hive_setting_screen.dart';
import 'package:flutter_app/screens/product_detail_screen.dart';

import '../../screens/login_screen.dart';
import '../../screens/products_screen.dart';
import '../../screens/register_screen.dart';

const LOGIN_SCREEN = "/login";
const REGISTER = '/register';
const PRODUCTS = '/products';
const HIVE_SETTING = '/setting';
const PRODUCT_DETAIL = "/product-detail";
const CART = '/cart';

RouteFactory hiveRouteFactory() {
  return (settings) {
    final Map<String, dynamic> arguments = settings.arguments;
    Widget screen;
    switch (settings.name) {
      case LOGIN_SCREEN:
        screen = Login();
        break;
      case REGISTER:
        screen = Register();
        break;
      case PRODUCTS:
        screen = Products();
        break;
      case HIVE_SETTING:
        screen = HiveSetting();
        break;
      case PRODUCT_DETAIL:
        screen = ProductDetail(arguments[ProductDetail.productDetailKey]);
        break;
      case CART:
        screen = Cart();
        break;
      default:
        screen = Login();
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}

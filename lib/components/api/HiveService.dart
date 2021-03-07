import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

const serverIP = "http://192.168.0.105:8080";

Future getAllProducts() async {
  var res = await http.get(Uri.parse(serverIP+"/products"));
  return jsonDecode(res.body);
}

Future getAllProductsFromFile(BuildContext context) async {
  var res = await DefaultAssetBundle.of(context).loadString("assets/products.json");
  return jsonDecode(res);
}
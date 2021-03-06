import 'dart:convert';

import 'package:http/http.dart' as http;

const serverIP = "http://192.168.15.103:8080";

Future getAllProducts() async {
  var res = await http.get(Uri.parse(serverIP+"/products"));
  return jsonDecode(res.body);
}

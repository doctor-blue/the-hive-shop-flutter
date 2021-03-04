import 'dart:convert';

import 'package:http/http.dart' as http;

const serverIP = "http://172.19.200.138:8080";

Future getAllProducts() async {
  var res = await http.get(Uri.parse(serverIP+"/products"));
  return jsonDecode(res.body);
}

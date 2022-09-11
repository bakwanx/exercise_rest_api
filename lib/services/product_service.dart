import 'dart:convert';

import 'package:http/http.dart' as http;

var urlProduct = "https://dummyjson.com/products";

class ProductService{

  static Map<String, String> _headers() => {
    'Content-type': 'application/json'
  };

  Future<Map<String, dynamic>> getProduct() async {
    var response = await http.get(
      Uri.parse(urlProduct),
      headers: _headers()
    );

    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      return data;
    }else{
      throw Exception("Failed fetch data");
    }
  }

}
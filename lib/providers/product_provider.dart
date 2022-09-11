import 'package:exercise_rest_api/services/product_service.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductProvider with ChangeNotifier {

  List<ProductModel> _productModels = [];
  List<ProductModel> get productModels => _productModels;

  void getProduct() async {
    try{
      await ProductService().getProduct().then((value){
        _productModels = value["products"]
            .map<ProductModel>((data) => ProductModel.fromJson(data))
            .toList();
      });
    }catch(e){
      print("Message error : $e");
    }
    notifyListeners();
  }

}
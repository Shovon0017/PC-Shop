
import 'dart:convert';
import 'dart:developer';

import 'package:pc_mart/Model/productListModel.dart';
import 'package:pc_mart/database/productList.dart';

class ProductListService{
  static Future<List<Products>> productListService()async{
    try{
      ProductLIstModel data= ProductLIstModel.fromJson(jsonDecode(jsonEncode(ProductList.productlist)));
      log("${data.products}");
      return data.products??[];
    }
    catch(e){
      log("error:$e");
    }
    return[];

  }
}
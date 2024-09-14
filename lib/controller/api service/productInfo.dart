
import 'dart:convert';
import 'dart:developer';

import 'package:pc_mart/Model/productInfoModel.dart';
import 'package:pc_mart/Model/productListModel.dart';
import 'package:pc_mart/database/productInfo.dart';
import 'package:pc_mart/database/productList.dart';

class ProductInfoService{
  static Future<Object> productInfoService({required int id})async{
    log("+++++++++");
    try{
      ProductInfoModel allproduct=ProductInfoModel.fromJson(jsonDecode(jsonEncode(ProductInfoData.productInfoData)));
      log("${allproduct.productDetails}");
      return allproduct.productDetails??[];
    }
    catch(e){
      log("error:$e");
    }
    return[];

  }
}
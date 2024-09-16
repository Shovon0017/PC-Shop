import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pc_mart/Model/productInfoModel.dart';
import 'package:pc_mart/database/productInfo.dart';
class ProductDescriptionService {
  static Future<ProductDescriptionModel?> productDescriptionService({required String id}) async {
    try {
      ProductDescriptionModel descriptionModel = ProductDescriptionModel.fromJson(jsonDecode(jsonEncode(ProductInfoData.productInfoData)));
      return descriptionModel;
    } catch (e) {
      debugPrint("Error : $e");
    }
    return null;
  }
}

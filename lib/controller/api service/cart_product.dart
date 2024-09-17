import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:pc_mart/Model/CartProductShow.dart';
import 'package:pc_mart/common%20widget/CommonSnackbar.dart';
import 'package:pc_mart/database/AddtoCartdata.dart';

class CartProductListService {
  static Future<List<ProductCart>?> cartProductListService() async {
    try {

        CartProductListModel data = CartProductListModel.fromJson(jsonDecode(jsonEncode(AddToCartData.addToCartData)));
        return data.productCart;
       
    } catch (e) {
      debugPrint("Error : $e");
    }
    CommonSnackBarMessage.errorMessage(text: "Something went wrong..!!");
    return [];
  }
}
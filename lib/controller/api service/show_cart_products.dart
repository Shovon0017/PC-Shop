import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:pc_mart/Model/CartProductShow.dart';
import 'package:pc_mart/database/show_cart_products.dart';
class ShowCartProductsService {
  static Future<CartProductShowModel?> showCartProductsService() async {
    try {
      CartProductShowModel response = CartProductShowModel.fromJson(
          jsonDecode(jsonEncode(ShowCartProductsList.showCartProductsList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}

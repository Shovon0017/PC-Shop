import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:pc_mart/local%20storage/local_storage.dart';
class AddToCartService {
  static Future<bool> cartService({required int id}) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return true;
    } catch (e) {
      log("Error: $e");
    }
    return false;
  }
}

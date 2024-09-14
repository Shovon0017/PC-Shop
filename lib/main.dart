import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/view/screen/home%20api%20version/home.dart';
import 'package:pc_mart/view/screen/product_info/product_info.dart';
import 'package:pc_mart/view/screen/splash/splash.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      home: ProductInfo(id: 0),
    );
  }
}

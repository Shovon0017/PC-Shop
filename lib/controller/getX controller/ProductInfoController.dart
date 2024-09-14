import 'dart:developer';

import 'package:get/get.dart';
import 'package:pc_mart/Model/productInfoModel.dart';
import 'package:pc_mart/controller/api%20service/productInfo.dart';
import 'package:pc_mart/database/show_cart_products.dart';
import 'package:pc_mart/view/screen/product_info/product_info.dart';

class ProductDetailsController extends GetxController{
  ProductDetails? productDetails;
  RxBool isLoading = false.obs;
  RxList<dynamic> image = [].obs;

  getProductDetails()async{
    isLoading.value=true;
    var data  = await Get.arguments ?? 0;
    productDetails = (await ProductInfoService.productInfoService(id:data)) as ProductDetails?;
    image(productDetails?.images);
    isLoading.value=false;
  }

  // addToCartFun({required int  id})async{
  //   bool status = await AddToCartApi.addToCartApi(id: id);
  //   log("============ AA : $status");
  //
  //   if(status == true){
  //
  //     Get.back();
  //   }
  // }


  @override
  void onInit() {
    getProductDetails();
    super.onInit();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/controller/api%20service/product_description.dart';

class DescriptionController extends GetxController {
  CarouselController carouselController = CarouselController();
  RxInt selectedImgIndex = 0.obs;
  RxInt productQty = 1.obs;
  var detailsData = {}.obs;
  RxList<String> imageList = <String>[].obs;
  String id = "0";
  RxDouble productAmount = 0.00.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    getProductDescription();
    super.onInit();
  }

  getProductDescription() async {
    id = await Get.arguments ?? "0";
    var a = await ProductDescriptionService.productDescriptionService(id: id);
    if (a?.productDetails != null) {
      for (var i in a?.productDetails?.images ?? []) {
        imageList.add(i.toString());
      }

      var data = {
        "rating": a?.productDetails?.rating ?? "",
        "review": a?.productDetails?.review ?? "",
        "description": a?.productDetails?.description?.en ?? "",
      };
      detailsData.addAll(data);
    }
  }

  addToCartProduct({required int productID, required int qty}) async {
    Get.back();
  }
}

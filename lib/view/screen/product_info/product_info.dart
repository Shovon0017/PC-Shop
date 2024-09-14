


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/controller/getX%20controller/ProductInfoController.dart';


class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    ProductDetailsController controller = Get.put(ProductDetailsController());
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Description"),
        centerTitle: true,
      ),
      body: Obx(()=>
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 230,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 230,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: controller.image.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 120,
                                  child: Image.asset("${controller}")
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
                Text("Stock:${controller.productDetails?.productStock}"),
                const SizedBox(height: 20),
                Text("Review:${controller.productDetails?.review}"),
                const SizedBox(height: 20),
                Text("Rating:${controller.productDetails?.rating}"),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:const Border.fromBorderSide(BorderSide(color: Colors.black))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Description:${controller.productDetails?.description?.en}",style: const TextStyle(fontSize: 16),),
                    ),
                  ),
                ),
                CommonButton(buttonName: "Add to cart", onTap: ()async{
                })
              ],
            ),
          ),
      ),
    );
  }
}
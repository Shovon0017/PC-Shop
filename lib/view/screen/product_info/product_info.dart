


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/controller/getX%20controller/ProductInfoController.dart';
import 'package:pc_mart/view/screen/OrderInfo/OrderInfo.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';


class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    ProductDetailsController controller = Get.put(ProductDetailsController());
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        title: SizedBox(
            height: 32,
            width: 114,
            child: Image.asset("images/pcmart.jpg")),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CommonIconButton(onTap: (){
              Get.to(()=>NotificationShow());
            }),
          )
        ],
      ),
      body: Obx(()=>
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:10),
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
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:const Border.fromBorderSide(BorderSide(color: Colors.black))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Description:${controller.productDetails?.description?.en}",style: const TextStyle(fontSize: 16),),
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CommonButton(
                        buttonWidth: 150,

                          buttonName: "Buy Now", onTap: ()async{
                          Get.to(()=>OrderInfo());
                      }),
                      CommonButton(
                        buttonWidth:150,

                          buttonName: "Add to cart", onTap: ()async{
                      })
                    ],
                  )
                ],
              ),
            ),
          ),
      ),
    );
  }
}
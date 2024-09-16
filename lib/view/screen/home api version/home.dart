

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_text.dart';
import 'package:pc_mart/common%20widget/search_field.dart';
import 'package:pc_mart/controller/getX%20controller/ProductListController.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';
import 'package:pc_mart/view/screen/product_info/product_info.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller=Get.put(HomeController());
    return Scaffold( backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        title: SizedBox(
            height: 40,
            width: 150,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchField(
              onChanged: (String text ) {
                log("===== onChanged : $text ==================");
                // controller.searchFunction(searchText: text);
              },
            ),
            const SizedBox(height: 10),
            Obx(() => controller.isLoading.isTrue
                ? const Center(child: CircularProgressIndicator())
                : controller.productList.isEmpty
                ? const Center(
                child: CommonText(title: "Empty Product List"))
                : Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.builder(
                      physics:PageScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.productList.length,
                      gridDelegate:
                       SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(onTap: (){
                          Get.to(()=>ProductInfo(id:index, productData: controller.productList[index]));
                        },
                          child: Card(
                            elevation: 4,
                            color: Colors.white,
                            child: SizedBox(
                              height: 220,
                              width:
                              MediaQuery.sizeOf(context).width /
                                  2.2,
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                  height: 100,
                                      width: 100,
                                      child: Image(image: AssetImage("${controller.productList[index].image}"))),
                                  CommonText(
                                      title: "ID : ${controller.productList[index].productId}"),
                                  CommonText(
                                      title:
                                      "Name : ${controller.productList[index].nameEn}"),
                                  CommonText(
                                      title:
                                      "Price : ${controller.productList[index].regPrice}Tk"),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
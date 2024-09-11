

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_text.dart';
import 'package:pc_mart/common%20widget/search_field.dart';
import 'package:pc_mart/controller/getX%20controller/ProductListController.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';


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
                controller.searchFunction(searchText: text);
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
                    CommonText(
                      title:
                      "Total Item : ${controller.productList.length}",fSize: 16,),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.productList.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        var data = controller.productList[index];
                        return Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topRight,
                          children: [
                            Card(
                              child: SizedBox(
                                height: 220,
                                width:
                                MediaQuery.sizeOf(context).width /
                                    2.2,
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 150,
                                        width:
                                        MediaQuery.sizeOf(context)
                                            .width /
                                            2.2,
                                        child: Image.network(
                                          "https://cit-ecommerce-codecanyon.bandhantrade.com/${data.image}",fit: BoxFit.fitWidth,),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                      const EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 3),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          CommonText(
                                              title: "ID : ${data.productId}"),
                                          CommonText(
                                              title:
                                              "Name : ${data.nameEn}"),
                                          CommonText(
                                              title:
                                              "Price : ${data.regPrice}Tk"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // IconButton(onPressed: (){
                            //   controller.addToCartFun(data:data);
                            // }, icon: Icon(Icons.add_shopping_cart_outlined))
                          ],
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
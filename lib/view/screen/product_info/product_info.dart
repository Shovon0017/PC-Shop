


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/controller/getX%20controller/ProductListController.dart';
import 'package:pc_mart/controller/getX%20controller/cart_show_controller.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    ShowCartProductsController controller = Get.put(ShowCartProductsController());
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
                            itemCount: controller.showCart.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 120,
                                  child: Image.asset(
                                    "${controller.showCart[id].images}",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
                Text("Stock:${controller.showCart[id].stock}"),
                const SizedBox(height: 20),
                Text("Price:${controller.showCart[id].price}tk"),
                const SizedBox(height: 20),
                Text("Brand:${controller.showCart[id].brand}"),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:const Border.fromBorderSide(BorderSide(color: Colors.black))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Description:${controller.showCart[id].specifications}",style: const TextStyle(fontSize: 16),),
                    ),
                  ),
                ),
                CommonButton(buttonName: "Add to cart", onTap: (){
                })
              ],
            ),
          ),
      ),
    );
  }
}
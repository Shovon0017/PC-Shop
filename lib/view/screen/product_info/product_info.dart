


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/Model/productListModel.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/common%20widget/common_text_field.dart';
import 'package:pc_mart/controller/getX%20controller/product_description.dart';
import 'package:pc_mart/view/screen/OrderInfo/OrderInfo.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';


class ProductInfo extends StatelessWidget {
   ProductInfo({super.key, required this.id, required this.productData});
  final int id;
  var value=-1;
   final Products productData;
  @override
  Widget build(BuildContext context) {
    DescriptionController controller = Get.put(DescriptionController());
    controller.productAmount.value = double.parse(productData.regPrice.toString());
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
      body:
          Padding(
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
                        child: Image.asset("${productData.image}")
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
               Text("Rating:${productData.nameEn}"),
                const SizedBox(height: 10),
                Text("Brand:${productData.brand}"),
                const SizedBox(height: 10),
                Text("Stock:${productData.stock}"),
                const SizedBox(height: 10),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border:const Border.fromBorderSide(BorderSide(color: Colors.black))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Description:Welcome to Our Supershop! Discover a wide range of quality products at unbeatable prices. From fresh groceries and household essentials to the latest gadgets and fashion, we have everything you need in one place. Enjoy the convenience of shopping from home and paying securely with cash on delivery.",style: const TextStyle(fontSize: 16),),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CommonButton(
                      buttonWidth: 150,
                        buttonColor: Color(0xff9a0000),
                        buttonName: "Confirm Order",
                        onTap: () {
                          Get.dialog(AlertDialog(
                              title: Text("Order Info",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
                              content: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    CommonTextField(
                                      Controller:
                                      TextEditingController(),
                                      hinText: "Customer Name",
                                      icon: null, color: null,
                                    ),
                                    SizedBox(height: 10),
                                    CommonTextField(
                                      Controller:
                                      TextEditingController(),
                                      hinText: "Customer Mobile Number",
                                      icon: null, color: null,
                                    ),
                                    SizedBox(height: 10),
                                    DropdownButtonFormField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                                borderSide:
                                                BorderSide(color: Colors.black))),
                                        value: value,
                                        items: [
                                          DropdownMenuItem(
                                            child: Text("Gender"),
                                            value: -1,
                                          ),
                                          DropdownMenuItem(
                                              child: Text("Male"), value: 0),
                                          DropdownMenuItem(
                                              child: Text("Female"), value: 1),
                                        ],
                                        onChanged: (v) {}),
                                    SizedBox(height: 10),
                                    DropdownButtonFormField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                                borderSide:
                                                BorderSide(color: Colors.black))),
                                        value: value,
                                        items: [
                                          DropdownMenuItem(
                                            child: Text("Choose quantity"),
                                            value: -1,
                                          ),
                                          DropdownMenuItem(
                                              child: Text("1 piece"), value: 0),
                                          DropdownMenuItem(
                                              child: Text("5 piece"), value: 1),
                                          DropdownMenuItem(
                                              child: Text("10 piece"), value: 2)
                                        ],
                                        onChanged: (v) {}),
                                    SizedBox(height: 10),
                                    CommonButton(
                                      buttonWidth: 150,
                                        buttonColor:Color(0xff9a0000),
                                        buttonName: "Confirm Order", onTap:(){
                                      Get.to(()=>OrderInfo());
                                    })
                                  ],
                                ),
                              )
                          ));
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
    );
  }
}
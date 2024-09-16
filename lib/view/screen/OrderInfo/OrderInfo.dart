import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';
import 'package:pc_mart/view/screen/payLater/payLater.dart';
import 'package:pc_mart/view/screen/paymentScreen/paymentscreen.dart';

class OrderInfo extends StatelessWidget {
  const OrderInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar:AppBar(
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Order Info",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Product Name:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "Intel Core i9-13900K",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Quantity:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "1 piece",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "price:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "599.99Tk",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
            SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Delivery Charge:",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    TextSpan(
                        text: "60Tk",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Delivery Time:",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    TextSpan(
                        text: "Get by 23-29 sept",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ])),
              SizedBox(height: 10),
              Text(
                "Customer Info",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Email:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "Shovon@gmail.com",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Billing Address:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "Sector-12,Uttara,Dhaka",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Contact:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "+8801847158301, +8801847158302",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              CommonButton(
                  buttonColor: Color(0xff9a0000),
                  buttonName: "Pay Now", onTap: (){
                Get.to(()=>PaymentScreen());
              }),
              CommonButton(
                buttonColor: Colors.grey,
                  buttonName: "Pay Later", onTap: (){
                  Get.to(()=>Paylater());
              })
            ],
          ),
        ),
      ),
    );
  }
}

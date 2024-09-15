import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/controller/getX%20controller/logout.dart';
import 'package:pc_mart/view/screen/FAQ/FAQ.dart';
import 'package:pc_mart/view/screen/Order%20%20report/Order_report.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';
import 'package:pc_mart/view/screen/requested_order/requested_order.dart';
import 'package:pc_mart/view/screen/setting/setting.dart';
import 'package:pc_mart/view/screen/support/support.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    LogOutService controller = Get.put(LogOutService());
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        title: SizedBox(
            height: 32, width: 114, child: Image.asset("images/pcmart.jpg")),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CommonIconButton(onTap: () {
              Get.to(() => NotificationShow());
            }),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 120,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  color: Color(0xff9a0000),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          height: 100,
                          width: 100,
                          child:
                              Card(child: Image.asset("images/Shovonpic.jpg"))),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name:Md Shimanto Mostofa",
                            style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Email:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: "Shovon@gmail.com",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15))
                          ])),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Phone:",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            TextSpan(
                                text: "01643770017",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15))
                          ])),
                          RichText(text: TextSpan(
                              children: [
                                TextSpan(text: "Address:",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white)),
                                TextSpan(text: "Sector-12,Uttara,Dhaka",style: TextStyle(color: Colors.white,fontSize: 15))
                              ]
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CommonButton(buttonName: "Update Profile", onTap: () {}),
              CommonButton(buttonName: "Requested Order", onTap: () {
                Get.to(()=>Order());
              }),
              CommonButton(buttonName: "Confirm Order", onTap: () {}),
              CommonButton(buttonName: "Order Report", onTap: () {
                Get.to(()=>OrderReport());
              }),
              CommonButton(buttonName: "Setting", onTap: () {
                Get.to(()=>Setting());
              }),
              CommonButton(buttonName: "Support", onTap: () {
                Get.to(()=>Support());
              }),
              CommonButton(buttonName: "FAQ", onTap: () {
                Get.to(()=>FAQ());
              }),
              CommonButton(
                  buttonName: "LogOut",
                  onTap: () {
                    controller.logOutFun();
                  })
            ],
          ),
        ),
      ),
    );
  }
}

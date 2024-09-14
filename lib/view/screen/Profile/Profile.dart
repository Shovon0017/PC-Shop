import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/controller/getX%20controller/logout.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    LogOutService controller=Get.put(LogOutService());
    return Scaffold(backgroundColor: Color(0xffFFFFFF),
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
      body: Column(
        children: [
          Text("Profile",style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30
          ),),
           Row(
            children: [
              CircleAvatar(
                radius: 35,backgroundImage: AssetImage("images/Shovonpic.jpg"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MD Shimanto Mostofa",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "shovon@gmail.com",
                  )
                ],
              )
            ],
          ),
          CommonButton(buttonName: "Requested Order", onTap: (){

          }),
          CommonButton(buttonName: "Confirm Order", onTap: (){

          }),
          CommonButton(buttonName: "Order Report", onTap: (){

          }),
          CommonButton(buttonName: "Update Profile", onTap: (){

          }),
          CommonButton(buttonName: "Setting", onTap: (){

          }),

          CommonButton(buttonName: "LogOut", onTap: (){
            controller.logOutFun();
          })
        ],
      ),
    );
  }
}

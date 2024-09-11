

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/view/screen/navigation%20bar/navigation.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffffffff),
      appBar:AppBar(
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
      body:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset("images/signin.png"),
              ),
              const ListTile(
                leading: Text("Enter Your Mobile Number",style: TextStyle(fontSize: 15,color: Color(0xff4d4d4d)),),
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    hintText: "01xxxxxxxxx",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 1))),
              ),
              const ListTile(
                leading: Text("Password",style: TextStyle(fontSize: 15,color: Color(0xff4d4d4d)),),
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    hintText: "Password (8 to 32)",
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 1))),
              ),
              const SizedBox(height: 30),
              CommonButton(buttonName: "Sign In", onTap: () {
                Get.to(()=>NavigationBarShow());
              })
            ],
          ),
        ),
      ),
    );
  }
}

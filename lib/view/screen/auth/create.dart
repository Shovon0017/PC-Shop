

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/view/screen/auth/login2.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset:false,
        backgroundColor: const Color(0xffffffff),
      appBar:AppBar(
        backgroundColor: Color(0xffFFFFFF),
        title: SizedBox(
            height: 40,
            width: 150,
            child: Image.asset("images/pcmart.jpg")),
        centerTitle: true,
      ),
      body:Center(
        child:Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(
            children: [
              const SizedBox(
                height:40,
              ),
              const Text("Create a New Account",style: TextStyle(fontSize: 25,color: Color(0xff4d4d4d)),),
              const ListTile(
                leading: Text("Type Your name",style: TextStyle(fontSize: 15,color: Color(0xff4d4d4d)),),
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "First And Last Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 1))),
              ),
              const ListTile(
                leading: Text("Mobile Number",style: TextStyle(fontSize: 15,color: Color(0xff4d4d4d)),),
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
                leading: Text("Create a Password",style: TextStyle(fontSize: 15,color: Color(0xff4d4d4d)),),
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "Password (8 to 32)",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(width: 1))),
              ),
              const ListTile(
                leading: Icon(Icons.check_box_outlined,color: Color(0xff9a0000),),
                title: Text("By proceeding, you agree to zdrop’s Teams and Conditions",style: TextStyle(fontSize: 13),),
              ),
              const ListTile(
                leading: Icon(Icons.check_box_outlined,color: Color(0xff9a0000),),
                title: Text("By proceeding, you agree to zdrop’s Privacy and Policy",style: TextStyle(fontSize: 13),),
              ),
              CommonButton(buttonName: "Sign Up", onTap: (){
                Get.to(()=>Login2());
              })
            ],
          ),
        ),
      )
    );
  }
}

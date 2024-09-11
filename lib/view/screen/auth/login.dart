import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/view/screen/auth/create.dart';
import 'package:pc_mart/view/screen/auth/login2.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: 350,
                    width: 350,
                    child: Image.asset("images/login4.png")),
               CommonButton(buttonName: "Already a Customer? Sign In", onTap: (){
                 Get.to(()=>Login2());
               }),
                 SizedBox(
                  height: 30,
                ),
                CommonButton(buttonName: "Create a Account", onTap: (){
                  Get.to(()=>Create());
                })
              ],
            ),
          ),
        ));
  }
}

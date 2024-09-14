

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/controller/getX%20controller/forget_password_controller.dart';

class ForgetPass extends StatelessWidget {
  const ForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController controller =Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
        centerTitle: true,
      ),
      body: Center(
          child:Column(
            children: [

            ],
          )
      ),
    );
  }
}

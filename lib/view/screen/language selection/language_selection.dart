
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/view/screen/auth/SignIn.dart';
import 'package:pc_mart/view/screen/home%20api%20version/home.dart';
class LanguageSelection extends StatelessWidget {
  const LanguageSelection({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:Color(0xffFFFFFF),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/english select logo.png"),
              SizedBox(height: 90),
              CommonButton(buttonColor:Colors.grey ,
                  buttonName: "বাংলা",textColor: Colors.white, onTap: (){

              }),
              CommonButton(buttonColor:Color(0xff9a0000) ,
                  buttonName: "English", onTap: (){
                Get.to(()=>SignIn(
                ));
              })
            ],
          ),
        ),
      ),
    );
  }
}

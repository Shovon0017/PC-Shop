import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/view/screen/navigation%20bar/navigation.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';

class Paylater extends StatelessWidget {
  const Paylater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        title: SizedBox(
            height: 32,
            width: 114,
            child: Image.asset("images/splash logo.png")),
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
        child: Column(
          children: [
            Text("Appointment Form",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            SizedBox(
              height: 50,
            ),
            Text(
              "Appointment Successfully Created",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Card(
                elevation: 3,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Container(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Dear Sir, Amirul Islam Amir Comfirmed your Appointment wirh Assoc. Prof. Dr. Khandker Parvez Ahmed. SL: 5 Room: 801 (Level-8) Date: 28-08-2024. Delta Health Care, Mymensingh Ltd. Address: 55/5, Medical College Gate, Charpara, Mymensingh."),
                   Text(" http://cmadical.com/appoinmenrt/aavbgfjhs45",style: TextStyle(color: Colors.blue),),
                    ],
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CommonButton(
                buttonColor: Colors.blue,
                buttonWidth: 100,
                buttonHeight: 30,
                buttonName: "Complete", onTap: (){
              Get.to(()=>NavigationBarShow());
            })
          ],
        ),
      ),
    );
  }
}

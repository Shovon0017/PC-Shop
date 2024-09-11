import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';
import 'package:pc_mart/view/screen/payLater/payLater.dart';
import 'package:pc_mart/view/screen/paymentScreen/paymentscreen.dart';

class AppointmentInfo extends StatelessWidget {
  const AppointmentInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Appointment Info",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Doctor Name:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "Assoc. Prof. Dr. Khandker Parvez Ahm",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Patient Info",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Patient Name:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "Amirul Islam Amir",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Patient Mobile Number:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "015987654123",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Type:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "New",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Gender:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "Male",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Chamber:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "Delta Hospital Mymensingh",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "4:00 PM",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "(Thu-Fri)",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Address:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: " 55/5, Medical College Gate, Charpara, Mymensingh",
                    style: TextStyle(fontSize: 15, color: Colors.black))
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
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Doctor Fee:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "1800 Tk",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              CommonButton(
                  buttonColor: Colors.blue,
                  buttonName: "Payment For Booking", onTap: (){
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

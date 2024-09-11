

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
class HospitalInfo extends StatelessWidget {
  const HospitalInfo({super.key});
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
    child: Icon(Icons.notifications_active_outlined),
    )
    ],
    ),
      body:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hospital Info",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(child: Image.asset("images/hospitaldetails.png")),
            
                Row(
            
                  children: [
                    Text(
                      "Type:",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    CommonButton(
                        buttonColor: Colors.blue,
                        buttonHeight: 25,
                        buttonWidth: 120,
                        buttonName: "Specialties",
                        onTap: () {}),
            
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Experience:",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 15)),
                          TextSpan(
                              text: "8+ Years",
                              style: TextStyle(fontSize: 15, color: Colors.black))
                        ]))
                  ],
                ),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Top Branch:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15)),
                      TextSpan(
                          text: "4",
                          style: TextStyle(fontSize: 15, color: Colors.black))
                    ])),
                RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Code Number:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15)),
                      TextSpan(
                          text: "M37103",
                          style: TextStyle(fontSize: 15, color: Colors.black))
                    ])),
                Text(
                  "Chamber & Time:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "About",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "A good number of physicians have served with reputation. Much emphasis has been given to quality services with the help of adequate number of diploma holding trained nurses. Modern medical business is very competitive. Almost every year new world class machines are invented in order to compete with others. It has around one hundred reputed specialist doctors, medical expertise, medical technology and modern management. Hence, it can take challenge in any sort of health care. The hospital is going to create facilities for research & development (R & D) to develop better strategies for the prevention and treatment of various diseases.",
                ),
                Text("Contact 24/7",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Text("01755598365"),
                Text("01317330599"),
                Text("deltacarerampura@gmail.com"),
                Text("Branch Name",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Card(
                    elevation: 5,
                    color: Color(0xffFFFFFF),
                    child: Row(
                      children: [
                        Icon(Icons.keyboard_arrow_right_outlined),
                        Text("Delta Health Care,Mirpur Ltd"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Card(
                    elevation: 5,
                    color: Color(0xffFFFFFF),
                    child: Row(
                      children: [
                        Icon(Icons.keyboard_arrow_right_outlined),
                        Text("Delta Health Care,Mymensingh Ltd"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Card(
                    elevation: 5,
                    color: Color(0xffFFFFFF),
                    child: Row(
                      children: [
                        Icon(Icons.keyboard_arrow_right_outlined),
                        Text("Delta Health Care,Chittagong Ltd"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: Card(
                    elevation: 5,
                    color: Color(0xffFFFFFF),
                    child: Row(
                      children: [
                        Icon(Icons.keyboard_arrow_right_outlined),
                        Text("Delta Health Care,Jattrabari Ltd"),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

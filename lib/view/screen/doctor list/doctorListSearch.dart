import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/view/screen/doctorInfo/doctorInfo.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';

import 'widget/search_for_doctor.dart';

class DoctorListSearch extends StatelessWidget {
  const DoctorListSearch({super.key});

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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SearchFieldDoctor(onChanged: (String text){
              }),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Doctor List",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Container(
                      width: 190,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.lan),
                            Text("Neurologist", style: TextStyle(fontSize: 20)),
                            Icon(Icons.arrow_drop_down),
                          ]))
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 8,
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 250,
                        width: double.infinity,
                        child: InkWell(onTap: (){
                          Get.to(()=>DoctorInfo());
                        },
                          child: Card(
                            elevation: 5,
                            color: Color(0xffFFFFFF),
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset("images/doctorPic.png",
                                      fit: BoxFit.fill),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Container(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Assoc. Prof. Dr. Khandker Parvez Ahmad",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        SizedBox(height: 5),
                                        Row(
                                          children: [
                                            Text(
                                              "Specialties:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            CommonButton(
                                                buttonWidth: 110,
                                                buttonHeight: 25,
                                                buttonColor: Colors.blue,
                                                buttonName: "Neurologist",
                                                onTap: () {})
                                          ],
                                        ),
                                        Text("MBBS, Phd (Neurology) (ITALY), MSc (Endocrinology) (UK)"),
                                        SizedBox(height: 5),
                                        RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                              text: "Working:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          TextSpan(
                                              text: "Victoria Healthcare",
                                              style:
                                                  TextStyle(color: Colors.black))
                                        ])),
                                        SizedBox(height: 5),
                                        RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                              text: "BMDC Number:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          TextSpan(
                                              text: "M37103",
                                              style:
                                                  TextStyle(color: Colors.black))
                                        ])),
                                        SizedBox(height: 5),
                                        RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                              text: "experience:",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          TextSpan(
                                              text: "17+ Years",
                                              style:
                                                  TextStyle(color: Colors.black))
                                        ]))
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

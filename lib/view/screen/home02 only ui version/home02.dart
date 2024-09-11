import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/search_field.dart';
import 'package:pc_mart/view/screen/Doctor_Report/doctor_report.dart';
import 'package:pc_mart/view/screen/FAQ/FAQ.dart';
import 'package:pc_mart/view/screen/Hospital_list/hospitalListSearch.dart';
import 'package:pc_mart/view/screen/department/department_ui_version.dart';
import 'package:pc_mart/view/screen/doctor%20list/doctorListSearch.dart';
import 'package:pc_mart/view/screen/investigation/investigation.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';
import 'package:pc_mart/view/screen/setting/setting.dart';
import 'package:pc_mart/view/screen/support/support.dart';

class Home02 extends StatefulWidget {
  const Home02({super.key});

  @override
  State<Home02> createState() => _Home02State();
}

class _Home02State extends State<Home02> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: Column(
          children: [
            SearchField(onChanged: (String text) {}),SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 3,
                  padding: EdgeInsets.all(2),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 120,
                      width: 206,
                      child: Image.asset("images/trand2.png"),
                    );
                  }),
            ),
            Text(
              "Category",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 370,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200]),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(onTap: (){
                        Get.to(()=>HospitalListSearch());
                      },
                        child: Container(
                          height: 100,
                          width: 100,

                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: Card(
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/hospital.png",
                                  ),
                                ),
                              ),
                              Text("Hospital")
                            ],
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        Get.to(()=>DoctorListSearch());
                      },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: Card(
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/doctor.png",
                                  ),
                                ),
                              ),
                              Text("Doctor")
                            ],
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        Get.to(()=>Investigation());
                      },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: Card(
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/investigation.png",
                                  ),
                                ),
                              ),
                              Text("Investigation")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(onTap: (){
                        Get.to(()=>DoctorReport());
                      },
                        child: Container(
                          height: 100,
                          width: 100,

                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: Card(
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/doctor report.png",
                                  ),
                                ),
                              ),
                              Text("Doctor report")
                            ],
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        Get.to(()=>Department_ui());
                      },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: Card(
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/department.png",

                                  ),
                                ),
                              ),
                              Text("Department")
                            ],
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        Get.defaultDialog(
                          title: "Send Invitation",
                          content: Text("Invite By SMS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                          actions: [
                            Text("Share",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
                          ]
                        );
                      },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: Card(
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/invite.png",

                                  ),
                                ),
                              ),
                              Text("Invite")
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(onTap: (){
                        Get.to(()=>FAQ());
                      },
                        child: Container(
                          height: 100,
                          width: 100,

                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: Card(
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/faqt.png",

                                  ),
                                ),
                              ),
                              Text("FAQ")
                            ],
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        Get.to(()=>Support());
                      },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: Card(
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/support.png",
                                  ),
                                ),
                              ),
                              Text("Support")
                            ],
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        Get.to(()=>Setting());
                      },
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80,
                                width: 80,
                                child: Card(
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/settings.png",

                                  ),
                                ),
                              ),
                              Text("Setting")
                            ],
                          ),
                        ),
                      )
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

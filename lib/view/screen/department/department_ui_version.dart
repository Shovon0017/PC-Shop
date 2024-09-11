import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';

class Department_ui extends StatelessWidget {
  const Department_ui({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Department",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 370,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)),
                child: Column(

                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/Asthma.png",
                                  ),
                                ),
                              ),
                              Text("Asthma")
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/medicine.png",
                                  ),
                                ),
                              ),
                              Text("Medicine")
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/Surgery Tools.png",
                                  ),
                                ),
                              ),
                              Text("Sergery")
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/pediatric-surgery 1.png",
                                  ),
                                ),
                              ),
                              Text("Pediatric")
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/Broken Teeth Pain.png",
                                  ),
                                ),
                              ),
                              Text("Dentist")
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/respiratory-care 1.png",
                                  ),
                                ),
                              ),
                              Text("Respiratory")
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/gynaecology.png",
                                  ),
                                ),
                              ),
                              Text("Obs & Gynae")
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/cardiogram 1.png",
                                  ),
                                ),
                              ),
                              Text("Cardiology")
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/cancer 1.png",
                                  ),
                                ),
                              ),
                              Text("Cancer")
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/neuro.png",
                                  ),
                                ),
                              ),
                              Text("Neurologist")
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/orthopedic.png",
                                  ),
                                ),
                              ),
                              Text("Orthopedic")
                            ],
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 80,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                width: 70,
                                child: Card(
                                  elevation: 5,
                                  color: Colors.white,
                                  child: Image.asset(
                                    "images/stethoscope 1.png",
                                  ),
                                ),
                              ),
                              Text("General Physician",maxLines: 2,textAlign: TextAlign.center,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              CommonButton(
                  buttonColor: Color(0xff22A6FE),
                  buttonName: "More Department",
                  onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}

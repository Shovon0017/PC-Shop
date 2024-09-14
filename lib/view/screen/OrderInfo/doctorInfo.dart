import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/common%20widget/common_text_field.dart';
import 'package:pc_mart/view/screen/Appoinment/AppointmentInfo.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';

class OrderInfo extends StatelessWidget {
   OrderInfo({super.key});
  var value=-1;
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
            child: CommonIconButton(onTap: () {
              Get.to(() => NotificationShow());
            }),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text(
                "Doctor Info",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Image.asset("images/doctor images01.png"),
              Text(
                "Assoc. Prof. Dr. Khandker Parvez Ahmad",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Text("MBBS, Phd (Neurology) (ITALY))"),
              Text("MSc (Endocrinology) (UK"),
              CommonButton(
                  buttonColor: Colors.blue,
                  buttonName: "Booking Now",
                  onTap: () {
                    Get.dialog(AlertDialog(
                        title: Text("Book Appointment",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
                        content: SingleChildScrollView(
                          child: Column(
                            children: [
                              CommonTextField(
                                Controller:
                                TextEditingController(),
                                hinText: "Patient Name",
                                icon: null, color: null,
                              ),
                              SizedBox(height: 10),
                              CommonTextField(
                                Controller:
                                TextEditingController(),
                                hinText: "Patient Mobile Number*",
                                icon: null, color: null,
                              ),
                              SizedBox(height: 10),
                              // DropdownButtonFormField(
                              //     decoration: InputDecoration(
                              //         border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                              //             borderSide:
                              //             BorderSide(color: Colors.black))),
                              //     value: value,
                              //     items: [
                              //       DropdownMenuItem(
                              //         child: Text("Type"),
                              //         value: -1,
                              //       ),
                              //       DropdownMenuItem(
                              //           child: Text("Type-1"), value: 0),
                              //       DropdownMenuItem(
                              //           child: Text("Type-2"), value: 1),
                              //       DropdownMenuItem(
                              //           child: Text("Type-3"), value: 2)
                              //     ],
                              //     onChanged: (v) {}),
                              SizedBox(height: 10),
                              DropdownButtonFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                          borderSide:
                                          BorderSide(color: Colors.black))),
                                  value: value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("Gender"),
                                      value: -1,
                                    ),
                                    DropdownMenuItem(
                                        child: Text("Male"), value: 0),
                                    DropdownMenuItem(
                                        child: Text("Female"), value: 1),
                                  ],
                                  onChanged: (v) {}),
                              SizedBox(height: 10),
                              DropdownButtonFormField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                          borderSide:
                                          BorderSide(color: Colors.black))),
                                  value: value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("Choose Available Date"),
                                      value: -1,
                                    ),
                                    DropdownMenuItem(
                                        child: Text("Date-1"), value: 0),
                                    DropdownMenuItem(
                                        child: Text("Date-2"), value: 1),
                                    DropdownMenuItem(
                                        child: Text("Date-3"), value: 2)
                                  ],
                                  onChanged: (v) {}),
                              SizedBox(height: 10),
                              CommonButton(
                                  buttonName: "Book Appointment", onTap:(){
                                Get.to(()=>AppointmentInfo());
                              })
                            ],
                          ),
                        )
                    ));
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "specialties:",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  CommonButton(
                      buttonColor: Colors.blue,
                      buttonHeight: 25,
                      buttonWidth: 120,
                      buttonName: "Neurologist",
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
                        text: "17+ Years",
                        style: TextStyle(fontSize: 15, color: Colors.black))
                  ]))
                ],
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Working:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15)),
                TextSpan(
                    text: "Victoria Healthcare",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "BMDC Number:",
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
                "www.drkparvez.com.I am working in Neurology and diabetes more than 19 years. I have visited all kind of neurological problem like stroke,headache,vertigo,tinitus,tremor, low back pain,neck pain,facial daviation,hand and feet weakness, numbness,tingiling sensation,all kind of nerve and spine problem, parkinson diseases, epilepsy,memory problem,migraine, sinusitis and diabetes, miltiple joint pain,numbness and tingiling sensation both upper and lower limb.PlID,i had training from Royal infarmary Hospital, Edinburgh, London.post-graduation research fellowship in Rome University, Hospital, Italy, and had training from Germany.One year postgraduate training from Dhaka medical College and hospital",
              )
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:pc_mart/common%20widget/CommonIcon.dart';
// import 'package:pc_mart/view/screen/notification/notification.dart';
//
// class Category extends StatelessWidget {
//   const Category({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Color(0xffFFFFFF),
//       appBar: AppBar(
//         backgroundColor: Color(0xffFFFFFF),
//         title: SizedBox(
//             height: 32,
//             width: 114,
//             child: Image.asset("images/splash logo.png")),
//         centerTitle: true,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 10),
//             child: CommonIconButton(onTap: (){
//               Get.to(()=>NotificationShow());
//             }),
//           )
//         ],
//       ),
//       body:Center(
//         child: Column(
//           children: [
//             Text("Category",
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//             Container(
//               height: 370,
//               width: 400,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(15),
//                   color: Colors.grey[200]),
//               child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       InkWell(onTap: (){
//                         Get.to(()=>HospitalListSearch());
//                       },
//                         child: Container(
//                           height: 100,
//                           width: 100,
//
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 80,
//                                 width: 80,
//                                 child: Card(
//                                   color: Colors.white,
//                                   child: Image.asset(
//                                     "images/hospital.png",
//                                   ),
//                                 ),
//                               ),
//                               Text("Hospital")
//                             ],
//                           ),
//                         ),
//                       ),
//                       InkWell(onTap: (){
//                         Get.to(()=>DoctorListSearch());
//                       },
//                         child: Container(
//                           height: 100,
//                           width: 100,
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 80,
//                                 width: 80,
//                                 child: Card(
//                                   color: Colors.white,
//                                   child: Image.asset(
//                                     "images/doctor.png",
//                                   ),
//                                 ),
//                               ),
//                               Text("Doctor")
//                             ],
//                           ),
//                         ),
//                       ),
//                       InkWell(onTap: (){
//                         Get.to(()=>Investigation());
//                       },
//                         child: Container(
//                           height: 100,
//                           width: 100,
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 80,
//                                 width: 80,
//                                 child: Card(
//                                   color: Colors.white,
//                                   child: Image.asset(
//                                     "images/investigation.png",
//                                   ),
//                                 ),
//                               ),
//                               Text("Investigation")
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       InkWell(onTap: (){
//                         Get.to(()=>DoctorReport());
//                       },
//                         child: Container(
//                           height: 100,
//                           width: 100,
//
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 80,
//                                 width: 80,
//                                 child: Card(
//                                   color: Colors.white,
//                                   child: Image.asset(
//                                     "images/doctor report.png",
//                                   ),
//                                 ),
//                               ),
//                               Text("Doctor report")
//                             ],
//                           ),
//                         ),
//                       ),
//                       InkWell(onTap: (){
//                         Get.to(()=>Department_ui());
//                       },
//                         child: Container(
//                           height: 100,
//                           width: 100,
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 80,
//                                 width: 80,
//                                 child: Card(
//                                   color: Colors.white,
//                                   child: Image.asset(
//                                     "images/department.png",
//
//                                   ),
//                                 ),
//                               ),
//                               Text("Department")
//                             ],
//                           ),
//                         ),
//                       ),
//                       InkWell(onTap: (){
//                         Get.defaultDialog(
//                             title: "Send Invitation",
//                             content: Text("Invite By SMS",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
//                             actions: [
//                               Text("Share",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
//                             ]
//                         );
//                       },
//                         child: Container(
//                           height: 100,
//                           width: 100,
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 80,
//                                 width: 80,
//                                 child: Card(
//                                   color: Colors.white,
//                                   child: Image.asset(
//                                     "images/invite.png",
//
//                                   ),
//                                 ),
//                               ),
//                               Text("Invite")
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                   Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       InkWell(onTap: (){
//                         Get.to(()=>FAQ());
//                       },
//                         child: Container(
//                           height: 100,
//                           width: 100,
//
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 80,
//                                 width: 80,
//                                 child: Card(
//                                   color: Colors.white,
//                                   child: Image.asset(
//                                     "images/faqt.png",
//
//                                   ),
//                                 ),
//                               ),
//                               Text("FAQ")
//                             ],
//                           ),
//                         ),
//                       ),
//                       InkWell(onTap: (){
//                         Get.to(()=>Support());
//                       },
//                         child: Container(
//                           height: 100,
//                           width: 100,
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 80,
//                                 width: 80,
//                                 child: Card(
//                                   color: Colors.white,
//                                   child: Image.asset(
//                                     "images/support.png",
//                                   ),
//                                 ),
//                               ),
//                               Text("Support")
//                             ],
//                           ),
//                         ),
//                       ),
//                       InkWell(onTap: (){
//                         Get.to(()=>Setting());
//                       },
//                         child: Container(
//                           height: 100,
//                           width: 100,
//                           child: Column(
//                             children: [
//                               SizedBox(
//                                 height: 80,
//                                 width: 80,
//                                 child: Card(
//                                   color: Colors.white,
//                                   child: Image.asset(
//                                     "images/settings.png",
//
//                                   ),
//                                 ),
//                               ),
//                               Text("Setting")
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   )
//
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

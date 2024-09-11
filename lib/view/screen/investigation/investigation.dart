

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/view/screen/investigation/search_investigation.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';

class Investigation extends StatelessWidget {
  const Investigation({super.key});

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(
            children: [
              Text("Investigation",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SearchFieldInvestigation(onChanged: (String Text){
              }),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    itemCount: 8,
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index){
                      return SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: Card(
                          elevation: 5,
                          color: Color(0xffFFFFFF),
                          child: Row(
                            children: [
                              Icon(Icons.keyboard_arrow_right_outlined),
                              Text("Complete Blood Count (CBC)")
                            ],
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

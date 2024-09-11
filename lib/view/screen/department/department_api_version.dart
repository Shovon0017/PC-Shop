

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/view/screen/notification/notification.dart';

class Department extends StatelessWidget {
  const Department({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Color(0xffFFFFFF),
      appBar: AppBar(backgroundColor:Color(0xffFFFFFF),
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
      body: Column(
        children: [
          Text("Department",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 370,
            width: 400,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(15),),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(itemCount: 9,
                  shrinkWrap: true,
                  physics:PageScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
                      childAspectRatio: 1.1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10
                  ), itemBuilder: (context,index){
                    return Container(
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: Card(borderOnForeground: true,
                                shadowColor: Colors.black,
                                color:Color(0xff22A6FE),
                              ),
                            ),
                            Text("Name")
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: CommonButton(buttonColor: Color(0xff22A6FE),
                buttonName: "More Department", onTap: (){

            }),
          )
        ],
      ),
    );
  }
}

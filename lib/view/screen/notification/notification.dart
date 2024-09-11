
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/CommonIcon.dart';

class NotificationShow extends StatelessWidget {
  const NotificationShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFFFFFF),
      appBar:  AppBar(
        backgroundColor: Color(0xffFFFFFF),
        title: SizedBox(
            height: 40,
            width: 150,
            child: Image.asset("images/pcmart.jpg")),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text("Notification",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
                physics: PageScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                return SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 4,
                    color: Colors.white,
                    child: Center(child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(child: Text("Horem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum.",style: TextStyle(fontWeight: FontWeight.bold),)),
                    )),
                  ),
                );
            }),
          )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class NotificationShow extends StatelessWidget {
  const NotificationShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFFFFFF),
      appBar:  AppBar(
        backgroundColor: Color(0xffFFFFFF),
        title: SizedBox(
            height: 32,
            width: 114,
            child: Image.asset("images/splash logo.png")),
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

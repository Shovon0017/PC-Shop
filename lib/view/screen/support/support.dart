import 'package:flutter/material.dart';
import 'package:pc_mart/common%20widget/common_button.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Support",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Container(
               child:Column(
                 children: [
                   Image.asset("images/support pic.png"),SizedBox(height: 20),
                   Text("How May we Help you Today",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                   SizedBox(height: 20),
                   CommonButton(
                       buttonColor: Color(0xff9a0000),
                       buttonName: "Share the problem in the Facebook group",
                       onTap: () {}),
                   SizedBox(height: 10),
                   CommonButton(
                       buttonColor: Color(0xff9a0000),
                       buttonName: "Feedback & Suggesstion",
                       onTap: () {}),
                   SizedBox(
                     height: 20,
                   )
                 ],
               ),
             ),
              Column(
                children: [
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: Card(color: Color(0xffE9E9E9),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            child: Column(
                              children: [
                                SizedBox(height: 70,
                                    width: 70,
                                    child: Image.asset("images/Facebook Messenger.png")),
                                Text("Messenger"),
                              ],
                            ),
                          ),Container(
                            height: 100,
                            width: 100,

                            child: Column(
                              children: [
                                SizedBox(height: 70,
                                    width: 70,
                                    child: Image.asset("images/Email.png")),
                                Text("Email"),
                              ],
                            ),
                          ),Container(
                            height: 100,
                            width: 100,

                            child: Column(
                              children: [
                                SizedBox(height: 70,
                                    width: 70,
                                    child: Image.asset("images/Ring.png")),
                                Text("Call"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

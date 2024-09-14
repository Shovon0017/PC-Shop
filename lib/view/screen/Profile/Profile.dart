import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/common_button.dart';
import 'package:pc_mart/controller/getX%20controller/logout.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    LogOutService controller=Get.put(LogOutService());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: CircleAvatar(
                  radius: 35,backgroundImage: AssetImage("images/Shovonpic.jpg"),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "MD Shimanto Mostofa",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "shovon@gmail.com",
                  )
                ],
              )
            ],
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(29, 58),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {

                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Requested Order",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                )),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(29, 58),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {

                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Confirm Order",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                )),
          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(29, 58),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Update Profile",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ],
                )),
          ),
          CommonButton(buttonName: "LogOut", onTap: (){
            controller.logOutFun();
          })
        ],
      ),
    );
  }
}

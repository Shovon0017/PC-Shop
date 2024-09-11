import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pc_mart/common%20widget/common_button.dart';

class SearchField extends StatelessWidget {
   SearchField({super.key,
    required this.onChanged});
  final void Function(String) onChanged;
var value=-1;
  @override
  Widget build(BuildContext context) {
    return TextField(
      // controller: searchController,
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide:  BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:CupertinoColors.systemGrey3),
            borderRadius: BorderRadius.circular(8)),
        focusedBorder: OutlineInputBorder(
            borderSide:  BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8)),
        labelText: "Search Hospital or Doctors",
        suffixIcon: InkWell(
            onTap: (){
              Get.defaultDialog(
                  title: "Filter",
                  titleStyle: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                  content: Column(
                    children: [
                      DropdownButtonFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                  BorderSide(color: Colors.black))),
                          value: value,
                          items: [
                            DropdownMenuItem(
                              child: Text("Doctor"),
                              value: -1,
                            ),
                            DropdownMenuItem(
                                child: Text("Doctor"), value: 0),
                            DropdownMenuItem(
                                child: Text("Doctor"), value: 1),
                            DropdownMenuItem(
                                child: Text("Doctor"), value: 2)
                          ],
                          onChanged: (v) {}),
                      SizedBox(height: 10),
                      DropdownButtonFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:
                                  BorderSide(color: Colors.black))),
                          value: value,
                          items: [
                            DropdownMenuItem(
                              child: Text("Department"),
                              value: -1,
                            ),
                            DropdownMenuItem(
                                child: Text("Department"), value: 0),
                            DropdownMenuItem(
                                child: Text("Department"), value: 1),
                            DropdownMenuItem(
                                child: Text("Department"), value: 2)
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
                              child: Text("Designation"),
                              value: -1,
                            ),
                            DropdownMenuItem(
                                child: Text("Designation"), value: 0),
                            DropdownMenuItem(
                                child: Text("Designation"), value: 1),
                            DropdownMenuItem(
                                child: Text("Designation"), value: 2)
                          ],
                          onChanged: (v) {}),
                      SizedBox(height: 10),
                      CommonButton(
                          buttonName: "Search", onTap: () => Get.back())
                    ],
                  ));
            },
            child: Card(color:Colors.blue,child: Icon(Icons.search,color: Colors.white,)))
      ),
    );
  }
}

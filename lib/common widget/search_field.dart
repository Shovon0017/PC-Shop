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
        labelText: "Search Computer Accessories",
        suffixIcon: InkWell(
            onTap: (){
              Get.defaultDialog(
                  title: "Filter",
                  titleStyle: TextStyle(
                      color:Color(0xff9a0000), fontWeight: FontWeight.bold),
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
                              child: Text("Accessories"),
                              value: -1,
                            ),
                            DropdownMenuItem(
                                child: Text("Mouse"), value: 0),
                            DropdownMenuItem(
                                child: Text("Keyboard"), value: 1),
                            DropdownMenuItem(
                                child: Text("Headphone"), value: 2)
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
                              child: Text("HardWare"),
                              value: -1,
                            ),
                            DropdownMenuItem(
                                child: Text("Ram"), value: 0),
                            DropdownMenuItem(
                                child: Text("SSD"), value: 1),
                            DropdownMenuItem(
                                child: Text("Cooling System"), value: 2)
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
                              child: Text("MotherBoard"),
                              value: -1,
                            ),
                            DropdownMenuItem(
                                child: Text("Msi"), value: 0),
                            DropdownMenuItem(
                                child: Text("Gygabyte"), value: 1),
                            DropdownMenuItem(
                                child: Text("ColorFull"), value: 2)
                          ],
                          onChanged: (v) {}),
                      SizedBox(height: 10),
                      CommonButton(
                          buttonName: "Search", onTap: () => Get.back())
                    ],
                  ));
            },
            child: Card(color:Color(0xff9a0000),child: Icon(Icons.search,color: Colors.white,)))
      ),
    );
  }
}

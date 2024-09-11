import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorTextField extends StatelessWidget {
  const DoctorTextField({super.key,
    // required this.searchController,
    // required this.onTap,
    required this.onChanged, required this.label});
  // final TextEditingController searchController;
  // final VoidCallback onTap;
  final void Function(String) onChanged;
  final String label;

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
          suffixIcon: InkWell(
              onTap: (){

              },
              child: Card(color:Colors.blue,child: Icon(Icons.search,color: Colors.white,)))
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFieldInvestigation extends StatelessWidget {
  const SearchFieldInvestigation({super.key,

    required this.onChanged});
  final void Function(String) onChanged;

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
          labelText: "Search Investigation",
          suffixIcon: InkWell(
              onTap: (){

              },
              child: Card(color:Colors.blue,child: Icon(Icons.search,color: Colors.white,)))
      ),
    );
  }
}

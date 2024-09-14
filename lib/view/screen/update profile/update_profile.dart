

import 'package:flutter/material.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              child: Icon(Icons.edit),
            ),

          ],
        ),
      ),
    );
  }
}

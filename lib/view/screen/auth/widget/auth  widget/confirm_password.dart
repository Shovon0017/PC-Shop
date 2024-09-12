import 'package:flutter/material.dart';

class ConfirmPasswordTextField extends StatelessWidget {
  const ConfirmPasswordTextField({super.key, required this.confirmPassController});
  final TextEditingController confirmPassController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: confirmPassController,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          enabledBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red)),
          labelText: "Confirm Password"),
      validator: (value) {
        if (value == "" || value == null) {
          return "Password can't be empty";
        }
        return null;
      },
    );
  }
}

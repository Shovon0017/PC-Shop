import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Request Order"),
        centerTitle: true,
      ),
      body: Center(child: Image.asset("images/Screenshot 2024-08-14 174528.png")),
    );
  }
}

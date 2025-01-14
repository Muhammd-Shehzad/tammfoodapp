import 'package:flutter/material.dart';

class DeleveryScreen extends StatefulWidget {
  const DeleveryScreen({super.key});

  @override
  State<DeleveryScreen> createState() => _DeleveryScreenState();
}

class _DeleveryScreenState extends State<DeleveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
            'DELEVERY TO',
            style: TextStyle(color: Color(0xFFEF9920)),
          ),),
        ],
      ),
    );
  }
}

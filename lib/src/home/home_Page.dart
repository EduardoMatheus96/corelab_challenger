import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff00B4CC),
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.always,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: null,
    );
  }
}

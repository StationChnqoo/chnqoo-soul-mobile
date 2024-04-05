import 'package:flutter/material.dart';

class MyDot extends StatelessWidget {
  final size;
  MyDot({required this.size});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: Colors.redAccent,
          borderRadius: BorderRadius.circular(size / 2)),
    );
  }
}
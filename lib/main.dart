import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.deepPurple,
        body: GradientContainer(
          color1: Color.fromARGB(255, 98, 114, 206),
          color2: Color.fromARGB(255, 92, 61, 145),
        ),
      ),
    ),
  );
}

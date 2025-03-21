import 'package:flutter/material.dart';
import 'package:home_cam_entrega/home_page.dart';

void main() {
  runApp(MaterialApp(
    showSemanticsDebugger: false,
    debugShowCheckedModeBanner: false,
    title: "CAM",
    theme: ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff49C0DC),
        foregroundColor: Colors.white,
      ),
    ),
    home: HomePage(),
  ));
}

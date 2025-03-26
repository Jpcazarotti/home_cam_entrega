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
      expansionTileTheme: const ExpansionTileThemeData(
        backgroundColor: Colors.black12,
        collapsedBackgroundColor: Colors.black12,
        textColor: Colors.black,
        collapsedTextColor: Colors.black,
        iconColor: Colors.black,
        collapsedIconColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        tilePadding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      ),
    ),
    home: HomePage(),
  ));
}

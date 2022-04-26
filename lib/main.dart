import 'package:flutter/material.dart';
import 'package:playground/pages/home_page.dart';
import 'package:playground/pages/instagram_ui.dart';
import 'package:playground/widget/bottom_nav_bar.dart';
import 'package:playground/widget/bottom_sheet.dart';
import 'package:playground/widget/drawer.dart';
import 'package:playground/widget/snackbar.dart';
import 'package:playground/widget/tab_bar.dart';
import 'package:playground/widget/text_field.dart';
import './widget/counter_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

int nilai = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InstagramUI(),
    );
  }
}

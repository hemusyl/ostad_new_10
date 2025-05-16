import 'package:flutter/material.dart';
import 'os10_button.dart';
import 'float_actn_bt.dart';
import 'form_login.dart';
import 'content_prac.dart';
import 'bottomNavigationButton.dart';
import 'navigation_drawer.dart';
import 'buttonType.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ' Button Type',
      home: buttonType(), // Class name
    );
  }
}
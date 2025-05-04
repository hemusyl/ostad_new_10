import 'package:flutter/material.dart';
import 'os10_button.dart';
import 'float_actn_bt.dart';
import 'form_login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'floating action button',
      home: floatingAction(), // Class name
    );
  }
}
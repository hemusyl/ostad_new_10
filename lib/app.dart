import 'package:flutter/material.dart';
import 'os10_button.dart';
import 'form_login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'batch 10 flutter',
      home: Os10Button(),
    );
  }
}
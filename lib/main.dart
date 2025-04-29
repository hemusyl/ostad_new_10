import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'batch 10 flutter',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My New App Header'),
        backgroundColor: Colors.cyanAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Text('Body text start',style: TextStyle( fontSize: 30,),),
            SizedBox(
              width: 20,
            ),
            Text('Body text start',style: TextStyle( fontSize: 25,),),
            Text('Body text start',style: TextStyle( fontSize: 25,),),
            Text('Body text End',style: TextStyle( fontSize: 25,),),
          ],
        ),
      ),
    );
  }
}

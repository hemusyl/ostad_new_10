import 'package:flutter/material.dart';

class floatingAction extends StatelessWidget {
  const floatingAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // backgroundColor: Colors.brown[100],
      // Header Part
      appBar: AppBar(
        title:Text('Class Action Button '),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){

      },
      child: Icon(Icons.add),
        backgroundColor: Colors.cyan ,
      ),
    );
  }
}

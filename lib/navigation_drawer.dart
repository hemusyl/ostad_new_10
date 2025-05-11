import 'package:flutter/material.dart';
class navigationDrawer extends StatelessWidget {
  const navigationDrawer({super.key});

  MySnackbar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Navigation Drawer '),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
        toolbarHeight: 65,
        actions: [
          IconButton(onPressed: (){MySnackbar('I am Email', context);}, icon:Icon(Icons.email)),
          IconButton(onPressed: (){MySnackbar('I am Search', context);}, icon:Icon(Icons.search)),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.amberAccent,
        currentIndex: 0, // Which one to be active
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Contact",),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Sign In",),
        ],
        onTap: (int index){
          if (index == 0){
            MySnackbar("I am home", context);
          }
          if (index == 1){
            MySnackbar("I am Contact", context);
          }
          if (index == 2){
            MySnackbar("I am Sign", context);
          }
        },
      ),
    );
  }
}

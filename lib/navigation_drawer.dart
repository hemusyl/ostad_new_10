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
      drawer: Drawer(
        child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                  child: UserAccountsDrawerHeader(
                      accountName: Text("Humayun Kabir"),
                      accountEmail: Text("humayun1278@gmail.com"),
                      currentAccountPicture:
                      Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN3fMD9X1_p5b6lRSCGcpDtH9BcgEOsEZLg&s"),
                  ),
                      decoration: BoxDecoration(color: Colors.cyanAccent),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  MySnackbar("This Home snackbar", context);
                },
              ),

              ListTile(
                leading: Icon(Icons.contact_mail),
                  title: Text("Contact"),),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone"),),
            ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView.builder(
            itemBuilder: (
                BuildContext context,int index){
              return ListTile(
                leading:Icon(Icons.list),
                title: Text("GFG item $index"),
                trailing: Icon(Icons.done),
              );
            }),
        //elevation: 20.0,
        //semanticLabel: 'endDrawer',
      ),
    );
  }
}

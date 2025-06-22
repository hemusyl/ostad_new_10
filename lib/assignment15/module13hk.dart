import 'package:flutter/material.dart';

class Module13hk extends StatefulWidget {
  const Module13hk({super.key});

  @override
  State<Module13hk> createState() => _Module13hkState();
}

class _Module13hkState extends State<Module13hk> {
  @override
  Widget build(BuildContext context) {

    void productDialog(){
      TextEditingController productNameController = TextEditingController();
      TextEditingController productQTYCController = TextEditingController();
      TextEditingController productImageController = TextEditingController();
      TextEditingController productUnitPriceController = TextEditingController();
      TextEditingController productTotalPriceController = TextEditingController();
      
      showDialog(context: context, builder: (context)=>
        AlertDialog(
          title: Text('Add Product'),
          content: Column(
              mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Product Name'),
              ),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
            ],
          ),
        ),
      );
      
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Product CRUD By Humayun Kabir'),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(onPressed: ()=> productDialog(),
      child: Icon(Icons.add),
      ),
    );
  }
}

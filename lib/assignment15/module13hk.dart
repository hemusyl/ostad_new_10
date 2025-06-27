import 'package:flutter/material.dart';
import 'package:ostad_new_10/assignment15/ProductController.dart';
import 'package:ostad_new_10/assignment15/widget/productcard.dart';

class Module13hk extends StatefulWidget {
  const Module13hk({super.key});

  @override
  State<Module13hk> createState() => _Module13hkState();
}

class _Module13hkState extends State<Module13hk> {
  final Productcontroller productcontroller = Productcontroller();

  get value => null;

  @override
  void initState(){
    super.initState();
    setState(() {
      productcontroller.fetchProducts();
    });
  }

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
              SizedBox( height: 10,),
              Row(
                children: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Close')),
                SizedBox(width:5),
                  ElevatedButton(onPressed: (){}, child: Text('Add Product')),

                ],
              ),
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
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 0.6,
      ),
          itemBuilder: (context, index){
        var product = productcontroller.products[index];
              return productCard(onEdit: (){
                productDialog();
              }, onDelete: (){
                productcontroller.DeleteProducts(product.sId.toString()).then((value));
                if(value){
                  setState(() async {
                   await productcontroller.fetchProducts();

                  });
                  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text('Product Deleted'),
    duration: Duration(seconds: 2),)
    );
    } else{
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Something Wrong'),
                      duration: Duration(seconds: 2),)
                  );
                }
              }, product: product,);
          }),
      floatingActionButton: FloatingActionButton(onPressed: ()=> productDialog(),
      child: Icon(Icons.add),
      ),
    );
  }
}



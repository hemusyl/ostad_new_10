import 'package:flutter/material.dart';
import '../model/productModel.dart';

class productCard extends StatelessWidget {
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final Data product;
  const productCard({
    super.key, required this.onEdit, required this.onDelete, required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 150,
            child: Image.network(
                height: 100,
                fit: BoxFit.cover,
                'https://www.mobiledokan.co/wp-content/uploads/2023/08/Apple-iPhone-16-Pro-White-Titanium.webp'),

          ),
          Padding(padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Text(product.productName.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),

                Text('Price: ${product.unitPrice} | QTY : ${product.qty}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: onEdit, icon: Icon(Icons.edit, color:Colors.orange),),
                SizedBox(width: 5,),
                IconButton(onPressed: onDelete, icon: Icon(Icons.delete, color:Colors.redAccent),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
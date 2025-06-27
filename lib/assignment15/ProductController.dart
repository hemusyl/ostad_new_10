import 'dart:convert';
import 'model/productModel.dart';
import 'package:ostad_new_10/assignment15/urls.dart';
import 'package:http/http.dart' as http;
class Productcontroller{
  List<Data> products = [];
  Future<void> fetchProducts() async{
    final response = await http.get(Uri.parse(Urls.readProduct));
    print(response.statusCode);

    if(response.statusCode == 200){
      final data = jsonDecode(response.body);
      productModel model = productModel.fromJson(data);
      products = model.data ?? [];
    }
  }
}
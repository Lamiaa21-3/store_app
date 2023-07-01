

import 'package:store_app/helper/api.dart';
import 'package:store_app/modeles/get_product.dart';

class AddProduct{
  Future<GetProduct> addProduct({
  required String title ,
    required String image ,
    required String desc,
    required String price,
    required String category,
}) async
  {
   Map< String ,dynamic > data= await Api().post(url: 'https://fakestoreapi.com/products', body: {
   "title": title,
   "price":price,
   "description":  desc,
   "category": category,
   "image": image,

   },);
   return  GetProduct.fromJson(data);
  }
}
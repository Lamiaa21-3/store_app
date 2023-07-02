

import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:store_app/helper/api.dart';

import '../modeles/get_product.dart';

class GetAllProduct {
  Future<List <GetProduct>> getAllProfile () async
  {
    print('ssssssssssssssssssssssss');
    try{
      http.Response response = await http.get(Uri.parse('https://fakestoreapi.com/products'));
      print(response.body);
      // print('==========');
      //
      //  print(data);
      //  print('==========');
      // List <GetProduct> productList =[];
      // for( int i = 0 ; i< data.length ; i++)
      // {
      //   productList.add(GetProduct.fromJson(data[i]),
      //   );
      // }
      // print('ddoneeeeeeeeeeeeeeee');
      // return productList;
      return [];

    }catch(error){
      print('errorrrrrrrrrrrrrrrrr');
      print(error);
      return [];
    }
  }
}
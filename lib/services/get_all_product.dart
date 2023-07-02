

import 'dart:convert';


import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:store_app/helper/api.dart';

import '../modeles/get_product.dart';

class GetAllProduct {
  Future<List <GetProduct>> getAllProfile () async
  {
    try{
     var data =await Api.get(url: 'https://fakestoreapi.com/products') ;
      List <GetProduct> productList =[];
      for( int i = 0 ; i< data.length ; i++)
      {
        productList.add(GetProduct.fromJson(data[i]),
        );
      }
      print('ddoneeeeeeeeeeeeeeee');
      return productList;

    }catch(error){
      print('errorrrrrrrrrrrrrrrrr');
      print(error);
      return [];
    }
  }
}
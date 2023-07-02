
import 'dart:convert';

import 'package:store_app/helper/api.dart';

import '../modeles/get_product.dart';
import 'package:http/http.dart' as http;

class CategoryName {
  Future <List <GetProduct>> getCategoryNmae ({required String categoryName }) async{
    List <dynamic> data= await Api.get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List <GetProduct> productList =[];
    for( int i = 0 ; i< data.length ; i++)
    {
      productList.add(GetProduct.fromJson(data[i]),
      );
    }
    return productList;

  }
}
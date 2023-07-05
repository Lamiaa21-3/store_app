

import '../helper/api.dart';
import '../modeles/get_product.dart';

class PutProduct {
  Future<GetProduct> addProduct({
    required String title ,
    required String image ,
    required String desc,
    required String price,
    required String category,
    required int id,
  }) async
  {
    print(' productId = $id');
    Map< String ,dynamic > data= await Api().put(url: 'https://fakestoreapi.com/products/$id', body: {
      "title": title,
      "price":price,
      "description":  desc,
      "category": category,
      "image": image,

    },);
    return  GetProduct.fromJson(data);
  }
}
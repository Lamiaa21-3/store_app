
import 'package:flutter/material.dart';
import 'package:store_app/modeles/get_product.dart';
class ProductItem extends StatelessWidget {
  ProductItem({Key? key, required this.product}) : super(key: key);
  GetProduct product ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          blurRadius: 40.0,
          offset: Offset(10,10),
        ),
      ]),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Card(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 18.0, vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0,6),
                      style: TextStyle(color: Colors.grey, fontSize: 10.0),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                         r'$' ' {$product.price.toString()}',
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 100,
              bottom: 100,

              child: Image.network(

                product.image,
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

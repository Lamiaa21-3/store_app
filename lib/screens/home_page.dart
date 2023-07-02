import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/modeles/get_product.dart';
import 'package:store_app/screens/product_item.dart';
import 'package:store_app/services/get_all_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = '/HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          " New Trend ",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FutureBuilder<List<GetProduct>>(
            future: GetAllProduct().getAllProfile(),
            builder: (context, snapshot) {
                if( snapshot.hasData) {
                  List<GetProduct> product= snapshot.data!;

                  return GridView.builder(
                    itemCount: product.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 50,
                    ),
                    itemBuilder: (context, index) => ProductItem( product: product[index],),
                  );
                }
                else
                  {
                   return Center(child: CircularProgressIndicator());
                  }
            }
              )

          ),

    );
  }
}

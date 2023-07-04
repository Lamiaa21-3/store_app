import 'package:flutter/material.dart';
import 'package:store_app/modeles/get_product.dart';

import '../services/put_product.dart';
import '../widget/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpdetaProductPage extends StatefulWidget {
  UpdetaProductPage({
    super.key,
  });
  static String id = ' updetaproduct';

  @override
  State<UpdetaProductPage> createState() => _UpdetaProductPageState();
}

class _UpdetaProductPageState extends State<UpdetaProductPage> {
  String? product_name, desc, image;

  String? price;

  GetProduct? product;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    product = ModalRoute.of(context)?.settings.arguments as GetProduct?;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            " Update Product ",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                CustomTextField(
                  onChanged: (data) {
                    product_name = data;
                  },
                  hintText: ' Product Name ',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: ' Description ',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  input_type: TextInputType.number,
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: ' Price ',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: ' Image ',
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      isLoading = true;
                      setState(() {});
                      try {
                        updateProduct();
                        print(' success');
                      }  catch (e) {
                       print(e.toString());
                      }
                      isLoading = false;
                      setState(() {});
                    },
                    child: Text(
                      " Update",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void updateProduct() {
    PutProduct().addProduct(
        title: product_name!,
        image: image!,
        price: price!,
        desc: desc!,
        category: product!.category);
  }
}

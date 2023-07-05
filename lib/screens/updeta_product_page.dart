import 'package:flutter/material.dart';
import 'package:store_app/modeles/get_product.dart';
import 'package:store_app/screens/done_update.dart';
import 'package:store_app/screens/home_page.dart';

import '../services/put_product.dart';
import '../widget/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'done_update.dart';

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

  GetProduct? product ;
  bool isLoading = false;
  // TextEditingController product_controller = TextEditingController();
  // TextEditingController desc_controller = TextEditingController();
  // TextEditingController image_controller = TextEditingController();
  // TextEditingController price_controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // product_controller.text= "";
    // desc_controller.text="";
    // image_controller.text="";
    // price_controller.text = "";

    product = ModalRoute.of(context)?.settings.arguments as GetProduct?;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon:Icon (Icons.arrow_back,color: Colors.black,),onPressed: (){
             Navigator.pushNamed(context, HomePage.id);

          },),
          
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
                  //controller: product_controller,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: ' Description ',
                  //controller: desc_controller,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  //controller: price_controller,
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
                 //controller: image_controller,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () async {
                      isLoading = true;
                      Navigator.pushNamed(context, Done_Updtae.id); 
                      setState(() {});
                      try  {
                      if(product != null)
                       await  updateProduct(product!);
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

 Future< void> updateProduct(GetProduct product)  async{
   await PutProduct().addProduct(
    id: product.id,
        title:  product_name == null ? product.title:  product_name!,
        image: image == null ? product.image: image!,
        price:price == null ? product.price.toString(): price!,
        desc: desc == null ? product.description: desc!,
        category: product!.category);
        isLoading == false;
  }
}

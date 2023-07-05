import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_app/screens/updeta_product_page.dart';

class Done_Updtae extends StatefulWidget {
  const Done_Updtae({super.key});
  static String id = ' Update Done';

  @override
  State<Done_Updtae> createState() => _Done_UpdtaeState();
}

class _Done_UpdtaeState extends State<Done_Updtae> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(" Conforme Update ",style: TextStyle(color: Colors.black),),
        leading: IconButton(icon: Icon(Icons.arrow_back,color: Colors.black,),onPressed: (){
          Navigator.pushNamed(context, UpdetaProductPage.id);
        },),
      ),
     body: Center(
      child: Container(
        width: 150,
        height: 100,
        color: Colors.teal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            " Done Update ",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
    );
  }
}

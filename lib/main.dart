import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page.dart';
import 'package:store_app/services/get_all_product.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      // routes: {
      //   HomePage.id: (context) => HomePage(),
      // },
        //initialRoute: HomePage.id,
      home: HomePage(),

    );
  }
}


  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(),
  //     body: Center(
  //       child: TextButton(
  //         child: Text('GetData'),
  //         onPressed: () async{
  //         http.Response response= await  http.post(Uri.parse('https://fakestoreapi.com/products',),body: {
  //           'title': 'test product',
  //          ' price': '13.5',
  //           'description':' lorem ipsum set',
  //           'image':' https://i.pravatar.cc',
  //          ' category':' electronic',
  //           },
  //           headers: {
  //           'Accept': '*/*',
  //             'Authorization': 'Bearer',
  //           }
  //           );
  //           print(response.body);
  //
  //         },
  //       )
  //     ),
  //   );

import 'package:flutter/material.dart';
import 'package:food_ui_kit/views/Cart_page.dart';
import 'package:food_ui_kit/views/product_screen.dart';
import 'package:get/get.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'StateManagement with getx',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
        routes: {
         '/':(context)=>ProductScreen(),
          'Cart':(context)=>Cart(),
        },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mydemo4/pages/detail_page.dart';
import 'package:mydemo4/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.blue,

      ),
      home:HomePage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        DetailPage.id:(context)=>DetailPage("")
      },
    );
  }
}

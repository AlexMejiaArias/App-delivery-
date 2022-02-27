// ignore_for_file: prefer_const_constructors

import 'package:delivery_app/src/login/login_page.dart';
import 'package:delivery_app/src/utils/my_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,//Quitamos la etiqueta de debug
      title: 'Delivery App Flutter',
      theme: ThemeData(
        primaryColor: MyColors.primaryColor,
        appBarTheme: AppBarTheme(
          color: MyColors.primaryColor
        )
      ),
      initialRoute: 'login',
      routes: {
        'login' : (BuildContext context)=>LoginPage()
      },
      
    );
  }
}
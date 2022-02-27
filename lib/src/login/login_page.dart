// ignore_for_file: prefer_const_constructors

import 'package:delivery_app/src/utils/my_colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset(
            'assets/img/delivery.png',
            width: 200,
            height: 200,
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Correo Electronico'),
          ),
          TextField(
            decoration: InputDecoration(hintText: 'Contraseña'),
          ),
          ElevatedButton(onPressed: () {}, child: Text('Ingresar')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text('¿No tienes cuenta?',
              style: TextStyle(color: MyColors.primaryColor),),
            
              SizedBox(
                width: 7,
              ),
              Text(
                'Registrate',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: MyColors.primaryColor),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

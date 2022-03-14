import 'package:flutter/material.dart';

class LoginController {

  BuildContext context;

  //Capturar datos
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  Future init(BuildContext context){
    this.context = context;
  }

  void goToRegisterPage(){
    Navigator.pushNamed(context, 'register');
  }

  void login(){
    //Capturamos los datos
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    print('Email: $email , Password: $password');
  }
}


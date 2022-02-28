// ignore_for_file: prefer_const_constructors

import 'package:delivery_app/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
      child: Stack(
        children: [
          Positioned(
              top: -80,
              left: -100,
              child: _circleLogin()
          ),
          Positioned(
              child: _textLogin(),
              top: 60,
              left: 25,
          ),
          Column(
            children: [
              _lottieAnimation(),
              _textFieldEmail(),
              _textFieldPassword(),
              _botonLogin(),
              _textDonHaveAccount()
            ],
          ),
        ],
      ),
    ));
  }

  Widget _lottieAnimation(){
    return Container(
      margin: EdgeInsets.only(
        top: 120,
        right: 20,
        bottom: MediaQuery.of(context).size.height * 0.05
      ),
      child: Lottie.asset(
      'assets/json/deliveryLottie.json',
      width: 350,
      height: 300,
      fit: BoxFit.fill
      ),
    );
  }
  Widget _textLogin (){
    return Text('LOGIN',
    style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 22
    ),);
  }

  Widget _circleLogin () {
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: MyColors.primaryColor
      ),
    );
  }
  
  Widget _imageBanner() {
    return Container(
      margin: EdgeInsets.only(
          top: 120,
          bottom: MediaQuery.of(context).size.height * 0.20

      ),
      child: Image.asset(
        'assets/img/delivery.png',
        width: 200,
        height: 200,
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
        decoration: BoxDecoration(
          color: MyColors.primaryOpacityColor,
          borderRadius: BorderRadius.circular(30),

        ),
        child: TextField(
        decoration: InputDecoration(
            hintText: 'Correo Electronico',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryOpacityDart),
          prefixIcon: Icon(
            Icons.email,
            color: MyColors.primaryColor,
          )
        ),
      ),
    );
  }


  Widget _textFieldPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),

      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryOpacityDart),
            prefixIcon: Icon(
              Icons.lock,
              color: MyColors.primaryColor,
            )
        ),
      ),
    );
  }

  Widget _botonLogin() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 30),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('Ingresar'),
        style: ElevatedButton.styleFrom(
          primary: MyColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)
          ),
          padding: EdgeInsets.symmetric(vertical: 15)
        ),
      ),
    );
  }

  Widget _textDonHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Text(
          '¿No tienes cuenta?',
          style: TextStyle(color: MyColors.primaryColor),
        ),
        SizedBox(
          width: 7,
        ),
        Text(
          'Registrate',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: MyColors.primaryColor),
        ),
      ],
    );
  }
}

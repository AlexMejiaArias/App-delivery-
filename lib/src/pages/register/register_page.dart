import 'package:delivery_app/src/pages/register/register_controller.dart';
import 'package:delivery_app/src/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  RegisterController _con = new RegisterController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //Asi inicializamos los controladores
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _con.init(context);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(children: [
          Positioned(
              top: -80,
              left: -100,
              child: _circle()
          ),
          Positioned(
            child: _textRegister(),
            top: 70,
            left: 28,
          ),
          Positioned(
            child: _iconBack(),
            top: 55,
            left: -2,
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 150),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _imageUser(),
                  SizedBox(height: 30),
                  _textFieldEmail(),
                  _textFieldName(),
                  _textFieldLastName(),
                  _textFieldPhone(),
                  _textFieldPassword(),
                  _textFieldConfirmPassword(),
                  _botonRegister()
                ],
              ),
            ),
          )
        ],),
      ),

    );

  }

  Widget _circle() {
    return Container(
      width: 240,
      height: 230,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: MyColors.primaryColor
      ),
    );
  }

  Widget _iconBack (){
    return IconButton(onPressed: _con.goToLoginPage,
      icon: Icon(Icons.arrow_back_ios),
      color: Colors.white,);
  }

  Widget _textRegister (){
    return Text('REGISTRO',
      style: TextStyle(
          fontFamily: 'NimbusSans',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18
      ),
    );
  }


  Widget _imageUser (){
    return CircleAvatar(
      backgroundImage: AssetImage('assets/img/user_profile.png'),
      radius: 60,
      backgroundColor: Colors.grey[200],
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
        keyboardType: TextInputType.emailAddress,
        controller: _con.emailController,
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

  Widget _textFieldName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),

      ),
      child: TextField(
        controller: _con.nameController,
        decoration: InputDecoration(
            hintText: 'Nombre',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryOpacityDart),
            prefixIcon: Icon(
              Icons.person,
              color: MyColors.primaryColor,
            )
        ),
      ),
    );
  }

  Widget _textFieldLastName() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),

      ),
      child: TextField(
        controller: _con.lastnameController,
        decoration: InputDecoration(
            hintText: 'Apellido',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryOpacityDart),
            prefixIcon: Icon(
              Icons.person_outline,
              color: MyColors.primaryColor,
            )
        ),
      ),
    );
  }

  Widget _textFieldPhone() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),

      ),
      child: TextField(
        keyboardType: TextInputType.phone,
        controller: _con.phoneController,
        decoration: InputDecoration(
            hintText: 'Telefono',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryOpacityDart),
            prefixIcon: Icon(
              Icons.phone,
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
        controller: _con.passwordController,
        obscureText: true, // hide password
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

  Widget _textFieldConfirmPassword() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 5),
      decoration: BoxDecoration(
        color: MyColors.primaryOpacityColor,
        borderRadius: BorderRadius.circular(30),

      ),
      child: TextField(
        controller: _con.confirmPasswordController,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Confirmar contraseña',
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(15),
            hintStyle: TextStyle(color: MyColors.primaryOpacityDart),
            prefixIcon: Icon(
              Icons.lock_outline,
              color: MyColors.primaryColor,
            )
        ),
      ),
    );
  }




  Widget _botonRegister() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 50,vertical: 30),
      child: ElevatedButton(
        onPressed: _con.register,
        child: Text('Registarse'),
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

}

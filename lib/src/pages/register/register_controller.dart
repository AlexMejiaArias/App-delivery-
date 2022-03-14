import 'package:delivery_app/src/models/response_api.dart';
import 'package:delivery_app/src/models/user.dart';
import 'package:delivery_app/src/provider/user_provider.dart';
import 'package:delivery_app/src/utils/my_snackbar.dart';
import 'package:flutter/material.dart';
class RegisterController {

  BuildContext context;

  //Capturar datos
  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController lastnameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();
  TextEditingController confirmPasswordController = new TextEditingController();

  UsersProvider usersProvider = new UsersProvider();


  Future init(BuildContext context){
    this.context = context;
    usersProvider.init(context);
  }

  void goToLoginPage(){
    Navigator.pushNamed(context, 'login');
  }

  void register() async{
    String email = emailController.text.trim();
    String name =  nameController.text.trim();
    String lastname = lastnameController.text.trim();
    String phone = phoneController.text.trim();
    String password = passwordController.text.trim();
    String confimrPassword = confirmPasswordController.text.trim();

    //Validadciones
    //Todos los campos requeridos
    if(email.isEmpty || name.isEmpty || lastname.isEmpty || phone.isEmpty || password.isEmpty || confimrPassword.isEmpty){
    MySnackBar.show(context, "Debes ingresar todos los campos");
      return;
    }

    //Las claves no coinciden
    if(password != confimrPassword ){
      MySnackBar.show(context, "La contraseña no coincide ");
      return;
    }

    //Clave minimo 6 carateres
    if(password.length < 6){
      MySnackBar.show(context, "La contraseña debe tener minimo 6 caracteres");
      return;
    }




    User user = new User(
      email: email,
      name: name,
      lastname: lastname,
      phone: phone,
      password: password
    );

    ResponseApi responseApi = await usersProvider.create(user);

    MySnackBar.show(context, responseApi.massage);

    print('Respuesta ${responseApi.toJson()}');


  }


}
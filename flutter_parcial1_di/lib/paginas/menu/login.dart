import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(205, 232, 248, 0.965),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              children: [

                SizedBox(
                      height: 25,
                    ),
                _titleParcial(),

                SizedBox(
                  height: 5,
                ),

                _titleNombreIsa(),

                SizedBox(
                  height: 5,
                ),

                _titleNombreDanir(),

                 SizedBox(
                  height: 5,
                ),

                _titleLog(),

                _imagen(),

                _correo(),

                SizedBox(
                  height: 15,
                ),

                _password(),


                SizedBox(
                      height: 10,
                    ),
              ],
            ),
          ),


       ),
    );
  }

  Container _titleParcial(){
    return Container(
      child: Text(
            "Parcial 1 - ETPS3!",
            style: TextStyle(fontSize: 30,  fontWeight:FontWeight.bold,), 
         ),
    );
  }

  Container _titleNombreIsa(){
    return Container(
      child: Text(
        'Valencia Cisneros Maria Isabel - 2526232018',
        style: TextStyle(fontSize: 15,  fontWeight:FontWeight.bold,), 
      ),
    );
  }

   Container _titleNombreDanir(){
    return Container(
      child: Text(
        'Sanchez Arias Danir Lorenzo - 2524572019',
        style: TextStyle(fontSize: 15,  fontWeight:FontWeight.bold,), 
      ),
    );
  }

   Container _titleLog(){
    return Container(
      child: Text(
        'Login',
        style: TextStyle(fontSize: 25,  fontWeight:FontWeight.bold,), 
      ),
    );
  }

  Container _imagen(){
    return Container(
      width: 150,
      height: 150,
      child: Image.asset("assets/icono.png")
    );
  }

 Container _correo(){
      return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
                          
      child: TextFormField(
        enableInteractiveSelection: false,
        autofocus: true,
        maxLines: null,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
        ),
        decoration: InputDecoration(
          hintText: 'Correo',
          labelText: 'Ingrese su Correo',
          icon: Icon(
            Icons.vpn_lock,
            
        ),iconColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)),

            contentPadding: EdgeInsets.all(10),
        ),
        ),
      );
  }

   Container _password(){
      return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
                          
      child: TextFormField(
        enableInteractiveSelection: false,
        autofocus: true,
        maxLines: 1,
        style: TextStyle(
        
          overflow: TextOverflow.ellipsis,
        ),
        decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Ingrese su contraseña',
          icon: Icon(
            Icons.password,
            
        ),iconColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)),

            contentPadding: EdgeInsets.all(10),
        ),
        obscureText: true,
        ),
      );
  }


}
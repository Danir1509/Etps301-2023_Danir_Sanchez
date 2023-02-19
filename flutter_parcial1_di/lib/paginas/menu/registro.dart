import 'package:flutter/material.dart';
class Registro extends StatelessWidget {
  const Registro({super.key});

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

                _imagen(),

                _carnet(),

                SizedBox(
                  height: 15,
                ),

                _nombre(),

                SizedBox(
                  height: 15,
                ),

                _apellido(),

                SizedBox(
                  height: 15,
                ),

                _direccion(),

                SizedBox(
                  height: 15,
                ),

                _Usuario(),

                SizedBox(
                  height: 15,
                ),

                _password(),

                SizedBox(
                  height: 15,
                ),

                _repass(),

                SizedBox(
                  height: 15,
                ),

                _correo(),

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

  Container _imagen(){
    return Container(
      width: 150,
      height: 150,
      child: Image.asset("assets/icono.png")
    );
  }

  Container _carnet(){
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
          hintText: 'Carnet',
          labelText: 'Ingrese su carnet',
          icon: Icon(
            Icons.card_travel,
            
        ),iconColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)),

            contentPadding: EdgeInsets.all(10),
        ),
        ),
      );
  }

  Container _nombre(){
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
          hintText: 'Nombre',
          labelText: 'Ingrese su nombre',
          icon: Icon(
            Icons.person,
            
        ),iconColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)),

            contentPadding: EdgeInsets.all(10),
        ),
        ),
      );
  }

  Container _apellido(){
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
          hintText: 'Apellido',
          labelText: 'Ingrese su apellido',
          icon: Icon(
            Icons.person_2,
            
        ),iconColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)),

            contentPadding: EdgeInsets.all(10),
        ),
        ),
      );
  }

  Container _direccion(){
      return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
                          
      child: TextFormField(
        enableInteractiveSelection: false,
        autofocus: true,
        maxLines: 20,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
        ),
        decoration: InputDecoration(
          hintText: 'Direccion',
          labelText: 'Ingrese su Direccion',
          icon: Icon(
            Icons.maps_home_work,
            
        ),iconColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)),

            contentPadding: EdgeInsets.all(10),
        ),
        ),
      );
  }

  Container _Usuario(){
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
          hintText: 'Usuario',
          labelText: 'Ingrese su Usuario',
          icon: Icon(
            Icons.people_sharp,
            
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

  Container _repass(){
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
          hintText: 'RePassword',
          labelText: 'Confirme su contraseña',
          icon: Icon(
            Icons.check,
            
        ),iconColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)),

            contentPadding: EdgeInsets.all(10),
        ),
        obscureText: true,
        ),
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

}
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../json/cocina_json.dart';
import '../temas/colores.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: amarilloc,
      appBar: getAppBar(),
      body: getBody(),

    );
  }

  PreferredSizeWidget getAppBar(){
    return AppBar(
      backgroundColor: fondo,
      title: Row(
        children: [
          Text(
          "Account",
          style:TextStyle(
            fontSize: 20, 
            color: amarilloc, 
            fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: null, 
          icon: Icon(
            LineIcons.userCircleAlt ,
            color: amarilloc,
            )
          )
      ],
    );
  }

  Widget getBody(){
    return Scaffold(
      backgroundColor: amarilloc,
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
                  height: 55,
                ),

                _imagen(),

              ],
            ),
          ),


       ),
    );
  }

   Container _titleParcial(){
    return Container(
      child: Text(
            "Parcial 2 - ETPS3!",
            style: TextStyle(fontSize: 30,  fontWeight:FontWeight.bold,), 
         ),
    );
  }

  Container _titleNombreIsa(){
    return Container(
      child: Text(
        'Valencia Cisneros Maria Isabel - 2526232018',
        style: TextStyle(fontSize: 18,  fontWeight:FontWeight.bold,), 
      ),
    );
  }

   Container _titleNombreDanir(){
    return Container(
      child: Text(
        'Sanchez Arias Danir Lorenzo - 2524572019',
        style: TextStyle(fontSize: 18,  fontWeight:FontWeight.bold,), 
      ),
    );
  }

  Container _imagen(){
    return Container(
      width: 450,
      height: 450,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: NetworkImage(imagenes_data[1]['img'])
          ),
      ),
    );
  }
}
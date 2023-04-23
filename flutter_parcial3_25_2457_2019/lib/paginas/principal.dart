import 'package:flutter/material.dart';
import 'package:flutter_parcial3_25_2457_2019/paginas/apellidos.dart';
import 'package:flutter_parcial3_25_2457_2019/paginas/api.dart';
import 'package:line_icons/line_icons.dart';

import 'datos.dart';


class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  
  int paginaIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 180, 126),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  // para el cuerpo de la apk
  Widget getBody(){
    return IndexedStack(
      index: paginaIndex,
      children: [
        DatosPagina(),
        ApiPagina(),
        DatosApellidos(),
      ],
    );
  }

    //Para el footer de la apk
  Widget getFooter(){
    //para la lista de iconos 
    List iconoItems=[
      LineIcons.database,
      LineIcons.list,
      LineIcons.peopleCarry,


    ];

    //textos de los iconos 
    List textoItems = [
      "Datos",
      "Api", 
      "Apellidos", 
      ];

    return Container(
      height: 65,
      color: Color.fromARGB(255, 186, 140, 91),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(textoItems.length, (index) {
              return GestureDetector(
                
                //seleccion de iconos 
                onTap: () {
                  setState(() {
                    paginaIndex = index;
                  });
                },
                child: Column(
                  children: [
                      Icon(iconoItems[index],
                      color: paginaIndex==index?Color.fromARGB(255, 163, 8, 49):Colors.white.withOpacity(0.5),
                   ),
            
                    SizedBox(height: 5,),
                    Text(textoItems[index],
                    style: TextStyle(fontSize: 10,
                    color: paginaIndex==index?Color.fromARGB(255, 163, 8, 49):Color.fromARGB(255, 255, 255, 253).withOpacity(0.5),),)
                  ],),
              );
             }
            
            )
            
          ),
        ),
      ),
    );
  }
}
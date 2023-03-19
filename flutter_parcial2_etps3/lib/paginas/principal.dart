import 'package:flutter/material.dart';
import 'package:flutter_parcial2_etps3/paginas/account.dart';
import 'package:flutter_parcial2_etps3/paginas/groseries.dart';
import 'package:flutter_parcial2_etps3/paginas/plans.dart';
import 'package:flutter_parcial2_etps3/paginas/recipes.dart';
import 'package:flutter_parcial2_etps3/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

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
      backgroundColor: fondo,
      body: getBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: melon,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: paginaIndex,
      children: [
        Recipes(),
        Plans(),
        Groseries(),
        Account(),
      ],
    );
  }

  //Para el footer de la apk
  Widget getFooter() {
    //para la lista de iconos
    List iconoItems = [
      LineIcons.utensils,
      LineIcons.list,
      LineIcons.shoppingCart,
      LineIcons.userCircle,
    ];

    //textos de los iconos
    List textoItems = [
      "Recipes",
      "Plans",
      "Groseries",
      "Account",
    ];
    
    return Container(
      height: 100,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
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
                      Icon(
                        iconoItems[index],
                        color: paginaIndex == index
                            ? primary
                            : white.withOpacity(0.5),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        textoItems[index],
                        style: TextStyle(
                          fontSize: 10,
                          color: paginaIndex == index
                              ? primary
                              : white.withOpacity(0.5),
                        ),
                      ),
                      
                      
                    ],
                  ),
                  
        
                );
              }),
              
              ),
        ),
          
      ),

      

    );
  }
}

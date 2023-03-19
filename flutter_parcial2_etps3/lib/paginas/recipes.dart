import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parcial2_etps3/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

import '../json/cocina_json.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: amarilloc,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: fondo,
      title: Row(
        children: [
          Text(
            "Recipes",
            style: TextStyle(
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
              LineIcons.utensilSpoon,
              color: amarilloc,
            ))
      ],
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 38,
              decoration: BoxDecoration(
                color: fondo,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                style: TextStyle(color: white),
                cursorColor: primary,
                decoration: InputDecoration(
                    prefixIcon:
                        Icon(LineIcons.search, color: white.withOpacity(0.3)),
                    border: InputBorder.none,
                    hintText: "Busqueda Recipes",
                    hintStyle: TextStyle(
                      color: white.withOpacity(0.3),
                      fontSize: 17,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Venta de comida mas vendidos",
              style: TextStyle(
                  fontSize: 20, color: fondo, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hamburguesas",
              style: TextStyle(
                  fontSize: 16, color: fondo, fontWeight: FontWeight.w900),
            ),
            getHamburguesas(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Pizza",
              style: TextStyle(
                  fontSize: 16, color: fondo, fontWeight: FontWeight.w900),
            ),
            getPizzas(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Otros",
              style: TextStyle(
                  fontSize: 16, color: fondo, fontWeight: FontWeight.w900),
            ),
            getOtros(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    );
  }

  Widget getHamburguesas() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(hamburguesa_data.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      NetworkImage(hamburguesa_data[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                hamburguesa_data[index]['name'],
                                style: TextStyle(
                                    fontSize: 14,
                                    color: fondo,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    LineIcons.hamburger,
                                    color: fondo.withOpacity(0.8),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    hamburguesa_data[index]['text'],
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: fondo.withOpacity(0.8),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Divider(
                    color: white.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getPizzas() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(pizza_data.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      NetworkImage(pizza_data[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pizza_data[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: fondo,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(
                                   LineIcons.pizzaSlice,
                                    color: fondo.withOpacity(0.8),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    pizza_data[index]['text'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: fondo.withOpacity(0.8),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Divider(
                    color: white.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getOtros() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(otros_data.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: FadeInDown(
            duration: Duration(milliseconds: 100 * index),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Row(children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      otros_data[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                otros_data[index]['name'],
                                style: TextStyle(
                                    fontSize: 16,
                                    color: fondo,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    LineIcons.utensils,
                                    color: fondo.withOpacity(0.8),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    otros_data[index]['text'],
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: fondo.withOpacity(0.8),
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                    
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: Divider(
                    color: white.withOpacity(0.3),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

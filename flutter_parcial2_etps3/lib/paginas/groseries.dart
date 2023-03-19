import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../json/cocina_json.dart';
import '../temas/colores.dart';

class Groseries extends StatefulWidget {
  const Groseries({super.key});

  @override
  State<Groseries> createState() => _GroseriesState();
}

class _GroseriesState extends State<Groseries> {
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
            "Groseries",
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
              LineIcons.shoppingBag,
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
                    hintText: "Busqueda Groseries",
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
              "Categorias",
              style: TextStyle(
                  fontSize: 20, color: fondo, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Bebidas",
              style: TextStyle(
                  fontSize: 16, color: fondo, fontWeight: FontWeight.w900),
            ),
            getBebidas(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hamburguesa",
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
            getPizza(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Pastas",
              style: TextStyle(
                  fontSize: 16, color: fondo, fontWeight: FontWeight.w900),
            ),
            getPasas(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    );
  }

  Widget getPasas() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(chat_comidas.length, (index) {
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
                                      NetworkImage(chat_comidas[index]['img']),
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
                                chat_comidas[index]['name'],
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
                                    LineIcons.cheese,
                                    color: fondo.withOpacity(0.8),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    chat_comidas[index]['text'],
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

  Widget getPizza() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(pizza_data1.length, (index) {
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
                                      NetworkImage(pizza_data1[index]['img']),
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
                                pizza_data1[index]['name'],
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
                                    LineIcons.pizzaSlice,
                                    color: fondo.withOpacity(0.8),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    pizza_data1[index]['text'],
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

  Widget getHamburguesas() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(hamburguesa_data1.length, (index) {
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
                                      hamburguesa_data1[index]['img']),
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
                                hamburguesa_data1[index]['name'],
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
                                    hamburguesa_data1[index]['text'],
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

  Widget getBebidas() {
    var tamanio = MediaQuery.of(context).size;
    return Column(
      children: List.generate(bebidas_data.length, (index) {
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
                                      NetworkImage(bebidas_data[index]['img']),
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
                                bebidas_data[index]['name'],
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
                                    LineIcons.glassWhiskey,
                                    color: fondo.withOpacity(0.8),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    bebidas_data[index]['text'],
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
}

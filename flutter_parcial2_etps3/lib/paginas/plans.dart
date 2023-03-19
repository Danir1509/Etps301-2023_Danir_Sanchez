import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../json/cocina_json.dart';
import '../temas/colores.dart';

class Plans extends StatefulWidget {
  const Plans({super.key});

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
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
            "Plans",
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
              LineIcons.listOl,
              color: amarilloc,
            ))
      ],
    );
  }

  Widget getBody() {
    return Scaffold(
      backgroundColor: amarilloc,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              _titleTarjeta(),
              SizedBox(
                height: 5,
              ),
              _imagen(),
              _nombretarjeta(),
              SizedBox(
                height: 15,
              ),
              _numerotarjeta(),
              SizedBox(
                height: 15,
              ),
              _cvv(),
              SizedBox(
                height: 15,
              ),
              _mes(),
              SizedBox(
                height: 15,
              ),
              _anio(),
              SizedBox(
                height: 15,
              ),
              _correo(),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _titleTarjeta() {
    return Container(
      child: Text(
        "Registro de tarjeta",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Container _imagen() {
    return Container(
      width: 350,
      height: 350,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          image: DecorationImage(
              image: NetworkImage(imagenes_data[0]['img'])
          ),
      ),
    );
  }

  Container _nombretarjeta() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        enableInteractiveSelection: false,
        autofocus: false,
        maxLines: 1,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
        ),
        decoration: InputDecoration(
          hintText: 'Nombre',
          labelText: 'Titular de la tarjeta',
          hoverColor: Colors.black,
          icon: Icon(
            LineIcons.user,
          ),
          iconColor: Colors.black,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          focusColor: Colors.black,
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }

  Container _numerotarjeta() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        enableInteractiveSelection: false,
        autofocus: false,
        maxLines: 1,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
        ),
        decoration: InputDecoration(
          hintText: 'Numero',
          labelText: 'Numero de la tarjeta',
          fillColor: Colors.black,
          icon: Icon(
            LineIcons.confluence,
          ),
          iconColor: Colors.black,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          focusColor: Colors.black,
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }

  Container _mes() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        enableInteractiveSelection: false,
        autofocus: false,
        maxLength: 2,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
        ),
        decoration: InputDecoration(
          hintText: '00',
          labelText: 'Mes',
          fillColor: Colors.black,
          icon: Icon(
            LineIcons.monument,
          ),
          iconColor: Colors.black,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          focusColor: Colors.black,
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }

  Container _anio() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        enableInteractiveSelection: false,
        autofocus: false,
        maxLength: 4,
        maxLines: 1,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
        ),
        decoration: InputDecoration(
          hintText: '0000',
          labelText: 'Año',
          fillColor: Colors.black,
          icon: Icon(
            LineIcons.yammer,
          ),
          iconColor: Colors.black,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          focusColor: Colors.black,
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }

  Container _cvv() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        enableInteractiveSelection: false,
        autofocus: false,
        maxLength: 3,
        maxLines: 1,
        style: TextStyle(
          overflow: TextOverflow.ellipsis,
        ),
        decoration: InputDecoration(
          hintText: '000',
          labelText: 'CVV de la tarjeta',
          fillColor: Colors.black,
          icon: Icon(
            LineIcons.simCard,
          ),
          iconColor: Colors.black,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          focusColor: Colors.black,
          contentPadding: EdgeInsets.all(10),
        ),
        obscureText: true,
      ),
    );
  }

  Container _correo() {
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
          hintText: 'Correo',
          labelText: 'Ingrese su Correo',
          icon: Icon(
            Icons.vpn_lock,
          ),
          iconColor: Colors.black,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}

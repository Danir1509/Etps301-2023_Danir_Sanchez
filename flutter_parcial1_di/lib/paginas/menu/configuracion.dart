import 'package:flutter/material.dart';

class Configuracion extends StatelessWidget {
  const Configuracion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(205, 232, 248, 0.965),
      body: SingleChildScrollView(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 200,
            height: 200,
            child: Image.asset("assets/icono.png")
          ),
          Center( 
              child: Text('Configuración del sistema', 
                style: TextStyle(fontSize: 30), //estilo de fuente y tamanio 
                ),
                
            ),
        ],
      ),
    )
    
    );
  }
}
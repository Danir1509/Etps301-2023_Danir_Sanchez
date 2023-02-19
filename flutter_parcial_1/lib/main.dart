import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Parcial1());
}

class Parcial1 extends StatelessWidget {
  const Parcial1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: parcial(),
      
    );
  }
}

class parcial extends StatefulWidget {
  const parcial({super.key});

  @override
  State<parcial> createState() => _parcialState();
}

class _parcialState extends State<parcial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(189, 205, 214,10),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    children: [
                      
                      Text(
                        "Parcial 1 - ETPS3!",
                        style: TextStyle(fontSize: 30,  fontWeight:FontWeight.bold,), 
                      ),

                      Text(
                        'Danir Lorenzo Sanchez Arias - 2524572019',
                        style: TextStyle(fontSize: 15,  fontWeight:FontWeight.bold,), 
                      ),

                      Container(
                        width: 130,
                        height: 130,
                        child: Image.network("https://cdn.icon-icons.com/icons2/546/PNG/512/1455555011_users-10_icon-icons.com_53271.png")
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Container(
                          width: 300,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.grey[200],
                          ),

                          padding: EdgeInsets.symmetric(horizontal: 15),
                          
                          child: TextField(

                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                              hintText: "Ingrese su carnet",
                              icon: Icon(Icons.card_membership),
                              iconColor: Colors.black,

                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Container(

                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.grey[200],
                          ),

                          padding: EdgeInsets.symmetric(horizontal: 15),

                          child: TextField(

                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                              hintText: "Ingrese su nombre",
                              icon: Icon(Icons.person),
                              iconColor: Colors.black,

                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.grey[200],
                          ),

                          padding: EdgeInsets.symmetric(horizontal: 15),

                          child: TextField(

                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                              hintText: "Ingrese su apellido",
                              icon: Icon(Icons.person),
                              iconColor: Colors.black,

                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 3.0),
                        child: Container(
                          
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.grey[200],
                          ),

                          padding: EdgeInsets.symmetric(horizontal: 15),

                          child: TextField(

                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                              hintText: "Ingrese su usuario",
                              icon: Icon(Icons.people_alt),
                              iconColor: Colors.black,

                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3.0),
                          child: Container(
                          
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.grey[200],
                          ),

                          padding: EdgeInsets.symmetric(horizontal: 15),

                          child: TextField(
                            //maxLines: 20,

                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                              hintText: "Ingrese su direccion",
                              icon: Icon(Icons.maps_home_work),
                              iconColor: Colors.black,

                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3.0),
                          child: Container(

                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.grey[200],
                          ),

                          padding: EdgeInsets.symmetric(horizontal: 15),

                          child: TextField(

                              cursorColor: Colors.black,
                              obscureText: true,
                              decoration: InputDecoration(
                              hintText: "Ingrese su contraseña",
                              icon: Icon(Icons.password),
                              iconColor: Colors.black,

                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3.0),
                          child: Container(
                          
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.grey[200],
                          ),

                          padding: EdgeInsets.symmetric(horizontal: 15),

                          child: TextField(

                              obscureText: true,
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                              hintText: "Confirme su contraseña",
                              icon: Icon(Icons.check),
                              iconColor: Colors.black,

                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Container(
                          
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: Colors.grey[200],

                            
                          ),

                          padding: EdgeInsets.symmetric(horizontal: 15),

                          child: TextField(
                              
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                              hintText: "Ingrese su correo",
                              icon: Icon(Icons.email),
                              iconColor: Colors.black,
                              
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2),
                              ),
                            ),
                          maxLines: null,
                          ),
                        ),
                      ),
                     
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Container(
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blueAccent[400],
                              
                              boxShadow: [
                                BoxShadow(
                                  color:  Colors.blue,
                                  spreadRadius: 1,
                                  blurRadius: 8
                              ),]
                            ),

                          
                          padding: EdgeInsets.symmetric(horizontal: 110),

                          child: ButtonBar(
                            
                            children: [
                              Text('Ingresar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),                
                            ],
                          )
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Container(
                          width: 300,
                          
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9),
                              color: Colors.red[400],
                              
                              boxShadow: [
                                BoxShadow(
                                  color:  Colors.red,
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  
                              ),]
                              

                            ),

                          padding: EdgeInsets.symmetric(horizontal: 108),
                          
                          child: ButtonBar(
                            
                            children: [
                              
                              Text('Cancelar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),),                
                            ],
                          ),
                        ),
                      ),

                    

                    ],
                  ),
                ),

              ],
            ),
          ),


       ),
    );
  }
}
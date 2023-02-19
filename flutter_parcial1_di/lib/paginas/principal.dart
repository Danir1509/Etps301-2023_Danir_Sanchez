import 'package:flutter/material.dart';
import 'package:flutter_parcial1_di/paginas/menu/configuracion.dart';
import 'package:flutter_parcial1_di/paginas/menu/login.dart';
import 'package:flutter_parcial1_di/paginas/menu/registro.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {

  int _selectedIndex = 0;
  void _navigateBottonBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _paginas = [
        Login(),
        Registro(),
        Configuracion(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _paginas[_selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 54, 231, 254),
          currentIndex: _selectedIndex,
          
          onTap: _navigateBottonBar, fixedColor: Color.fromARGB(255, 24, 66, 88),
          
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.login, color: Colors.black),label: 'Login'),
            BottomNavigationBarItem(icon: Icon(Icons.app_registration, color: Colors.black),label: 'Registro'),
            BottomNavigationBarItem(icon: Icon(Icons.settings, color: Colors.black),label: 'Configuracion'),  
          ]
      ),

    );
  }
}
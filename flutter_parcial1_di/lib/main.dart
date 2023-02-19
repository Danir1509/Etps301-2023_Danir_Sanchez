import 'package:flutter/material.dart';
import 'package:flutter_parcial1_di/paginas/principal.dart';

void main() {
  runApp( Parcial1());
}

class Parcial1 extends StatelessWidget {
  const Parcial1({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: const Text('Parcial 1'), backgroundColor: Color.fromARGB(255, 54, 231, 254),
      ),
      body:  Principal(),
      ),
    );
  }
}

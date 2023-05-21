import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore baseD = FirebaseFirestore.instance;
Future<List> getClientes() async {
  List clientes = [];
  CollectionReference collectionReferenceClientes =
      baseD.collection('MD_Clientes_Vehiculos');
  QuerySnapshot queryUsuarios = await collectionReferenceClientes.get();
  queryUsuarios.docs.forEach((documento) {
    clientes.add(documento.data());
  });

  return clientes;
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

// ----------------------- para agregar clientes-----------------------------------------------

class _PrincipalState extends State<Principal> {
  final TextEditingController _sNombreClienteController = TextEditingController();
  final TextEditingController _sApellidosClienteController = TextEditingController();
  final TextEditingController _sCiudadClienteController = TextEditingController();
  final TextEditingController _sDireccionClienteController = TextEditingController();
  final TextEditingController _sKilometroController = TextEditingController();
  final TextEditingController _sMarcaController = TextEditingController();
  final TextEditingController _sMatriculaController = TextEditingController();
  final TextEditingController _sModeloController = TextEditingController();

  final CollectionReference _clientes =
      FirebaseFirestore.instance.collection('MD_Clientes_Vehiculos');

  Future<void> _create([DocumentSnapshot? documentSnapshot]) async {
   
    _sNombreClienteController.text = '';
    _sApellidosClienteController.text = '';
    _sCiudadClienteController.text = '';
    _sDireccionClienteController.text = '';
    _sKilometroController.text = '';
    _sMarcaController.text = '';
    _sMatriculaController.text = '';
    _sModeloController.text = '';

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Color.fromRGBO(207, 174, 144, 5),
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _sNombreClienteController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sApellidosClienteController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Apellidos',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sCiudadClienteController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Ciudad',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sDireccionClienteController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Direccion',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sKilometroController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Kilometro',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sMarcaController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Marca',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sMatriculaController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Matricula',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sModeloController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Modelo',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Agregar'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(169, 84, 8, 5)),
                  ),
                  onPressed: () async {
                    final String nombre = _sNombreClienteController.text;
                    final String apellidos = _sApellidosClienteController.text;
                    final String ciudad = _sCiudadClienteController.text;
                    final String direccion = _sDireccionClienteController.text;
                    final String kilo = _sKilometroController.text;
                    final String matricula = _sMatriculaController.text;
                    final String marca = _sMarcaController.text;
                    final String modelo = _sModeloController.text;
                    if (nombre != null) {
                      await _clientes.add({
                        "sNombreCliente": nombre,
                        "sApellidosCliente": apellidos,
                        "sCiudadCliente": ciudad,
                        "sDireccionCliente": direccion,
                        "sKilometro": kilo,
                        "sMarca": marca,
                        "sMatricula": matricula,
                        "sModelo": modelo
                      });

                      _sNombreClienteController.text = '';
                      _sApellidosClienteController.text = '';
                      _sCiudadClienteController.text = '';
                      _sDireccionClienteController.text = '';
                      _sKilometroController.text = '';
                      _sMarcaController.text = '';
                      _sMatriculaController.text = '';
                      _sModeloController.text = '';
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

// ----------------------- para actualizar clientes -----------------------------------------------
  Future<void> _update([DocumentSnapshot? documentSnapshot]) async {
    if (documentSnapshot != null) {
      _sNombreClienteController.text =
          documentSnapshot['sNombreCliente'].toString();
      _sApellidosClienteController.text =
          documentSnapshot['sApellidosCliente'].toString();
      _sCiudadClienteController.text =
          documentSnapshot['sCiudadCliente'].toString();
      _sDireccionClienteController.text =
          documentSnapshot['sDireccionCliente'].toString();
      _sKilometroController.text = documentSnapshot['sKilometro'].toString();
      _sMatriculaController.text = documentSnapshot['sMatricula'].toString();
      _sMarcaController.text = documentSnapshot['sMarca'].toString();
      _sModeloController.text = documentSnapshot['sModelo'].toString();
    } else {
      _sNombreClienteController.text = '';
      _sApellidosClienteController.text = '';
      _sCiudadClienteController.text = '';
      _sDireccionClienteController.text = '';
      _sKilometroController.text = '';
      _sMarcaController.text = '';
      _sMatriculaController.text = '';
      _sModeloController.text = '';
    }

    await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Color.fromRGBO(207, 174, 144, 5),
        builder: (BuildContext ctx) {
          return Padding(
            padding: EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: MediaQuery.of(ctx).viewInsets.bottom + 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _sNombreClienteController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sApellidosClienteController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Apellidos',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sCiudadClienteController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Ciudad',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sDireccionClienteController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Direccion',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sKilometroController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Kilometro',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sMarcaController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Marca',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sMatriculaController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Matricula',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                TextField(
                  controller: _sModeloController,
                  cursorColor: Colors.white,
                  decoration: const InputDecoration(
                    labelText: 'Modelo',
                    labelStyle: TextStyle(color: Color.fromRGBO(169, 84, 8, 5)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Actualizar'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(169, 84, 8, 5)),
                  ),
                  onPressed: () async {
                    final String nombre = _sNombreClienteController.text;
                    final String apellidos = _sApellidosClienteController.text;
                    final String ciudad = _sCiudadClienteController.text;
                    final String direccion = _sDireccionClienteController.text;
                    final String kilo = _sKilometroController.text;
                    final String matricula = _sMatriculaController.text;
                    final String marca = _sMarcaController.text;
                    final String modelo = _sModeloController.text;
                    if (nombre != null) {
                      await _clientes.doc(documentSnapshot!.id).update({
                        "sNombreCliente": nombre,
                        "sApellidosCliente": apellidos,
                        "sCiudadCliente": ciudad,
                        "sDireccionCliente": direccion,
                        "sModelo": modelo,
                        "sMatricula": matricula,
                        "sKilometro": kilo,
                        "sMarca": marca
                      });
                      _sNombreClienteController.text = '';
                      _sApellidosClienteController.text = '';
                      _sCiudadClienteController.text = '';
                      _sDireccionClienteController.text = '';
                      _sKilometroController.text = '';
                      _sMarcaController.text = '';
                      _sMatriculaController.text = '';
                      _sModeloController.text = '';
                      Navigator.of(context).pop();
                    }
                  },
                )
              ],
            ),
          );
        });
  }

// ----------------------- para eliminar clientes -----------------------------------------------
  Future<void> _delete(String clienteId) async {
    await _clientes.doc(clienteId).delete();

    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('El cliente fue eliminado correctamente')));
  }

// ----------------------- para mostrar clientes-----------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(169, 84, 8, 5),
        title: const Center(child: Text('Tabla Cliente Vehiculos')),
      ),
      body: Container(
        color: Color.fromRGBO(207, 174, 144, 5),
        child: StreamBuilder(
          stream: _clientes.snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                  return Card(
                    margin: const EdgeInsets.all(10),
                    color: Color.fromRGBO(169, 84, 8, 5),
                    child: ListTile(
                      title: Text(
                        '${documentSnapshot['sNombreCliente'].toString()} ${documentSnapshot['sApellidosCliente'].toString()}',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 247, 212, 5),
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Ciudad: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              children: [
                                TextSpan(
                                  text: documentSnapshot['sCiudadCliente']
                                      .toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Dirección: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              children: [
                                TextSpan(
                                  text: documentSnapshot['sDireccionCliente']
                                      .toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Modelo: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              children: [
                                TextSpan(
                                  text: documentSnapshot['sModelo'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Matricula: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      documentSnapshot['sMatricula'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Kilometro: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      documentSnapshot['sKilometro'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'Marca: ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                              children: [
                                TextSpan(
                                  text: documentSnapshot['sMarca'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () => _update(documentSnapshot)),
                            IconButton(
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                onPressed: () => _delete(documentSnapshot.id)),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }

            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),

      // ----------------------- boton para agregar clientes-----------------------------------------------
      floatingActionButton: FloatingActionButton(
        onPressed: () => _create(),
        backgroundColor: Color.fromRGBO(217, 177, 141, 0.984),
        child: const Icon(
          Icons.add,
          color: Color.fromRGBO(169, 84, 8, 5),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}

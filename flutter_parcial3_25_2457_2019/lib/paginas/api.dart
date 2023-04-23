import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;



class ApiPagina extends StatefulWidget {
  const ApiPagina({super.key});

  @override
  State<ApiPagina> createState() => _ApiPaginaState();
}

class _ApiPaginaState extends State<ApiPagina> {

  Future<http.Response> getEpicImages() async {
    final url ='https://api.nasa.gov/EPIC/api/natural?api_key=z78thUWoEJ3d46eyQAxAmSuIIu89jQvpD6e4XH2T';
    final response = await http.get(Uri.parse(url));
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 228, 180, 126),
      appBar: getAppBar(),
      body: getBody(),
      
    );
  }

  PreferredSizeWidget getAppBar(){
    return AppBar(
      backgroundColor: Color.fromARGB(255, 186, 140, 91),
      leading: IconButton(
        onPressed: null,
        icon: Text(
          "Api",
          style:TextStyle(
            fontSize: 15, 
            color: Color.fromARGB(255, 163, 8, 49), 
            fontWeight: FontWeight.w500
            )
        ),
      ),
      actions: [
        IconButton(
          onPressed: null, 
          icon: Icon(
            Icons.api, 
            color: Color.fromARGB(255, 163, 8, 49),
            )
          )
      ],
    );
  }

  Widget getBody(){
    return FutureBuilder<http.Response>(
  future: getEpicImages(),
  builder: (BuildContext context, AsyncSnapshot<http.Response> snapshot) {
    if (snapshot.hasData) {
      final body = json.decode(snapshot.data!.body);
      final imageUrls = body.map((item) => 'https://api.nasa.gov/EPIC/archive/natural/${item['date'].toString().substring(0, 10).replaceAll('-', '/')}/png/${item['image']}.png?api_key=z78thUWoEJ3d46eyQAxAmSuIIu89jQvpD6e4XH2T').toList();
      return ListView.builder(
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 450,
                  width: 450,
                  child: Image.network(imageUrls[index])),
              ],
            ),
          );
        },
      );
    } else if (snapshot.hasError) {
      return Text('Error al obtener los datos');
    } else {
      return Center(child: CircularProgressIndicator());
    }
  },
);
  }
}
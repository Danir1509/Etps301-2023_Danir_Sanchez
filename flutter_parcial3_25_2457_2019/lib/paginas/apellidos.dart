import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class DatosApellidos extends StatefulWidget {
  const DatosApellidos({super.key});

  @override
  State<DatosApellidos> createState() => _DatosApellidosState();
}

class _DatosApellidosState extends State<DatosApellidos> {

  Future<Map<String, dynamic>> getApod(String apiKey) async {
    var url = Uri.parse('https://api.nasa.gov/planetary/apod?api_key=$apiKey');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Fallo de conexion con APOD');
    }
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
          "Apellidos",
          style:TextStyle(
            fontSize: 9, 
            color: Color.fromARGB(255, 163, 8, 49), 
            fontWeight: FontWeight.w500
            )
        ),
      ),
      actions: [
        IconButton(
          onPressed: null, 
          icon: Icon(
            Icons.people_alt, 
            color: Color.fromARGB(255, 163, 8, 49),
            )
          )
      ],
    );
  }

  Widget getBody() {
    return Container(
      margin: EdgeInsets.only(top: 0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 20, right: 160, left: 160),
                child: Row(children: [
                  SizedBox(height: 15),
                  Text(
                    "Apellidos",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 163, 8, 49)),
                  ),
                ])),
            Container(
              margin: const EdgeInsets.only(top: 10, right: 100, left: 100),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 195, 140, 82).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                children: [
                  SizedBox(width: 25),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, right: 20, left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sanchez Arias",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(width: 25),
                        Text(
                          "25-2457-2019",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),

            Text(
              "Link de Api: https://api.nasa.gov/",
              style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 25,
            ),

            Text(
              "Api utilizada de APOD y EPIC",
              style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 25,
            ),
            Container(
              height: 500,
              width: 500,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FutureBuilder(
                  future: getApod('z78thUWoEJ3d46eyQAxAmSuIIu89jQvpD6e4XH2T'),
                  builder: (BuildContext context, AsyncSnapshot<Map<String, dynamic>> snapshot) {
                    if (snapshot.hasData) {
                      return Image.network(snapshot.data!['url']);
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    } else {
                      return CircularProgressIndicator();
                    }
                  },
                ),
              ),
            ),

            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
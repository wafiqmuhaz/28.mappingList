// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import "package:flutter/material.dart";

void main() {
  runApp(app());
}

class app extends StatefulWidget {
  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  final List<Map<String, dynamic>> myList = [
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
    {
      "Nama": "Wafiq Muhaz",
      "Umur": 21,
      "WarnaFav": [
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau",
        "Merah",
        "Kuning",
        "Hijau"
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mapping List"),
        ),
        body: Container(
          color: Colors.blue,
          child: ListView(
            children: myList.map((isi) {
              List myColors = isi["WarnaFav"];

              return Container(
                margin: EdgeInsets.all(10),
                child: Card(
                  color: Colors.black12,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://picsum.photos/id/1/200/300"),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Nama: ${isi['Nama']}"),
                                Text("Umur: ${isi['Umur']}"),
                              ],
                            )
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: myColors.map((color) {
                              return Container(
                                padding: EdgeInsets.all(10),
                                color: Colors.blue,
                                margin: EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 15,
                                ),
                                child: Text(color),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

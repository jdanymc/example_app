import 'package:flutter/material.dart';

class DevicePage extends StatelessWidget {
  const DevicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Column(children: [
        Container(
          alignment: Alignment.center,
          height: 100,
          //color: Colors.red,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(9, 9),
                  blurRadius: 20,
                )
              ]),
          child: Text(
            "Encabezado",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          height: 100,
          width: 400,
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(
                50,
              ),
            ),
          ),
          child: Container(
            height: 120,
            width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                bottomLeft: Radius.circular(50),
              ),
            ),
            child: Text(
              "Challenge",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 350,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                colors: [Color(0xff102128), Color(0xff2c5264)],
                begin: Alignment.bottomRight,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.99]),
          ),
        )
      ]),
    );
  }
}

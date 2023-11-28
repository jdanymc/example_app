import 'dart:ffi';

import 'package:flutter/material.dart';

class FuturePage extends StatefulWidget {
  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  Future<String> getTitle() async {
    return Future.delayed(const Duration(seconds: 4), () {
      return "Real - Kendrick Lamar";
    });
  }

  Future<int> getNumber() async {
    return Future.delayed(const Duration(seconds: 4), () {
      return 999;
    });
  }

  @override
  Widget build(BuildContext context) {
    // mensaje();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Futures",
          ),
        ),
        body: Center(
            child: FutureBuilder(
          future: getNumber(),
          builder: (BuildContext context, AsyncSnapshot snap) {
            print("-----------------------");
            print("SNAP: $snap");
            print("ESTADO DE CONEXION: ${snap.connectionState}");
            print("TIENE DATA?: ${snap.hasData}");
            print("TIENE ERROR?: ${snap.hasError}");
            print("VALOR: ${snap.data}");
            print("-----------------------");
            return Text("HOLA");
          },
        )),
      ),
    );
  }
}

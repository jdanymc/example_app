import 'package:example_app/models/person_model.dart';
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

  Future<List<Map<String, dynamic>>> getProducts() async {
    return Future.delayed(const Duration(seconds: 4), () {
      return [
        {"id": 1, "name": "platano"},
        {"id": 2, "name": "durazno"},
        {"id": 3, "name": "mandarina"},
      ];
    });
  }

  Future<List<Persona>> getPersonas() async {
    return Future.delayed(Duration(seconds: 5), () {
      return [
        Persona(
            bViveEnPeru: true,
            iEdad: 20,
            sDni: "45871258",
            sName: "Juan Perez",
            sSexo: 'M'),
        Persona(
            bViveEnPeru: true,
            iEdad: 60,
            sDni: "55221144",
            sName: "Maria Ibañez",
            sSexo: 'F'),
      ];
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
            future: getPersonas(),
            builder: (BuildContext context, AsyncSnapshot snap) {
              if (snap.hasData) {
                List<Persona> _personasList = snap.data;
                //print(snap.data);
                return ListView.builder(
                    itemCount: _personasList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(
                          _personasList[index].sName,
                        ),
                        leading: Text(
                          _personasList[index].sSexo,
                        ),
                      );
                    });
                //Text(data.length.toString());
              }
              return const CircularProgressIndicator();
              /*
              // if (snap.hasData) {
              //if (snap.connectionState == ConnectionState.done) {
              if (snap.connectionState == ConnectionState.waiting) {
                //String aux = snap.data;
                //return Text(aux);
                return CircularProgressIndicator();
              } else if (snap.hasError) {
                return Text("Error: ${snap.error}");
              } else {
                return Text(snap.data);
              }
              // return Container(
              //   width: 300,
              //   height: 300,
              //   child: CircularProgressIndicator(
              //     backgroundColor: Colors.red,
              //     color: Colors.cyan,
              //     strokeWidth: 30,
              //   ),
              // );

              //return const Text("Cargando...");
              //return Text(snap.data ?? "Esperando...");
              */
            },
          ),
        ),
      ),
    );
  }
}

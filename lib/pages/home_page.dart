import 'package:example_app/models/equipo.dart';
import 'package:example_app/models/espacio.dart';
import 'package:example_app/pages/equipment_page.dart';
import 'package:example_app/pages/space_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<Equipo> listEquipo = [
    Equipo(
        nombre: "TV Cuarto",
        tipo: "Televisor",
        icono: Icons.tv,
        fabricante: "LG",
        modelo: "Smart ThinQ AI",
        mac: "02:82:8D:69:A0:89",
        estado: false),
    Equipo(
        nombre: "Refrigeradora",
        tipo: "Refrigeradora",
        icono: Icons.kitchen,
        fabricante: "Mabe",
        modelo: "RMA230PJPG",
        mac: "AA:82:8D:69:A0:89",
        estado: false),
    Equipo(
        nombre: "Puerta Sala",
        tipo: "Puerta",
        icono: Icons.door_front_door,
        fabricante: "Cantol",
        modelo: "CADBIO0125",
        mac: "BB:82:8D:69:A0:89",
        estado: false),
    Equipo(
        nombre: "Cochera",
        tipo: "Cochera",
        icono: Icons.garage,
        fabricante: "Variable",
        modelo: "Multiple",
        mac: "CC:82:8D:69:A0:89",
        estado: false),
  ];
  List<Espacio> listEspacio = [
    Espacio(
      nombre: "A",
      valorFoco1: 20,
      valorFoco2: 50,
    ),
    Espacio(
      nombre: "B",
      valorFoco1: 10,
      valorFoco2: 60,
    ),
    Espacio(
      nombre: "C",
      valorFoco1: 80,
      valorFoco2: 90,
    ),
    Espacio(
      nombre: "D",
      valorFoco1: 50,
      valorFoco2: 55,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Navicury",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Espacios",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 140.0,
                child: ListView.builder(
                  itemCount: listEspacio.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                SpacePage(space: listEspacio[index]),
                          ),
                        );
                      },
                      child: Container(
                        width: 140.0,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: const Border(top: BorderSide.none),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(0, 5),
                                  blurRadius: 5),
                            ]),
                        child: Center(
                          child: Text(
                            listEspacio[index].nombre,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900,
                                fontSize: 75),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Equipos conectados",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  // generate 100 widgets that display their index in the list.
                  children: List.generate(listEquipo.length, (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                EquipmentPage(eq: listEquipo[index]),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: const Offset(0, 5),
                                  blurRadius: 5),
                            ]),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Icon(
                                    listEquipo[index].icono,
                                    color: Colors.blue.shade900,
                                    size: 100,
                                  ),
                                ),
                                Text(
                                  listEquipo[index].nombre,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.blue.shade900,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

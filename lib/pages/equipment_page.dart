import 'package:example_app/models/equipo.dart';
import 'package:flutter/material.dart';

class EquipmentPage extends StatefulWidget {
  Equipo eq;
  EquipmentPage({required this.eq});

  @override
  State<EquipmentPage> createState() => _EquipmentPageState();
}

class _EquipmentPageState extends State<EquipmentPage> {
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
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Tipo:",
                    style: TextStyle(fontSize: 18),
                  ),
                  Expanded(
                    child: Text(
                      widget.eq.tipo,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "Fabricante:",
                    style: TextStyle(fontSize: 18),
                  ),
                  Expanded(
                    child: Text(
                      widget.eq.fabricante,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "Modelo:",
                    style: TextStyle(fontSize: 18),
                  ),
                  Expanded(
                    child: Text(
                      widget.eq.modelo,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text(
                    "MAC:",
                    style: TextStyle(fontSize: 18),
                  ),
                  Expanded(
                    child: Text(
                      widget.eq.mac,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    widget.eq.estado = !widget.eq.estado;
                    setState(() {});
                  },
                  child: Text(
                    widget.eq.estado ? "Apagar" : "Encender",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: widget.eq.estado
                          ? Colors.blue.shade900
                          : Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

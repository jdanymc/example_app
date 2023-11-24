import 'package:flutter/material.dart';

class Equipo {
  String nombre;
  String tipo;
  IconData icono;
  String fabricante;
  String modelo;
  String mac;
  bool estado = false;

  Equipo({
    required this.nombre,
    required this.tipo,
    required this.icono,
    required this.fabricante,
    required this.modelo,
    required this.mac,
    required this.estado,
  });
}

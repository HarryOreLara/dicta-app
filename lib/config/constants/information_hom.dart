import 'package:flutter/material.dart';

class Information {
  final Icon icono;
  final String info;

  Information({required this.icono, required this.info});
}

final List<Information> informationList = [
  Information(
      icono: const Icon(
        Icons.legend_toggle,
        size: 40.0,
        color: Colors.blue,
      ),
      info: "Disfruta siempre"),
  Information(
      icono: const Icon(
        Icons.category,
        size: 40.0,
        color: Colors.red,
      ),
      info: "Multiples categorias"),
  Information(
      icono: const Icon(
        Icons.person,
        size: 40.0,
        color: Colors.green,
      ),
      info: "Varios Instructores"),
  Information(
      icono: const Icon(
        Icons.date_range,
        size: 40.0,
        color: Colors.orange,
      ),
      info: "Siempre actualizados")
];

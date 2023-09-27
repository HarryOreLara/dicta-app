import 'package:flutter/material.dart';

class OvalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 1); // Mover al borde inferior izquierdo
    path.quadraticBezierTo(size.width / 2, size.height, size.width,
        size.height / 2); // Dibujar la curva ovalada
    path.lineTo(size.width, 0); // Volver al borde inferior derecho
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // No se requiere reconstruir el clipper
  }
}

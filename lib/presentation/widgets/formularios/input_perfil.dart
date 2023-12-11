import 'package:flutter/material.dart';

class InputPerfil extends StatelessWidget {
  final String label;
  const InputPerfil({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(fontSize: 20.0, color: Colors.white),

      decoration: InputDecoration(
          focusColor: Colors.white,
          fillColor: Colors.white,
          hoverColor: Colors.white,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white), // Color del borde cuando está enfocado
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white), // Color del borde cuando no está enfocado
          ),
          label: Text(
            label,
            style: TextStyle(
                color: Colors.grey.shade300,
                fontFamily: 'Gotham-Black',
                fontSize: 14.0,
                fontWeight: FontWeight.w900),
          ),
          errorText: "",
          hintStyle: const TextStyle(color: Colors.grey)),
    );
  }
}

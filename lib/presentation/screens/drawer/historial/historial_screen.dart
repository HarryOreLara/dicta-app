import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HistorialScreen extends StatelessWidget {
  const HistorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historial"),
        leading: IconButton(
            onPressed: () {
              context.go('/');
            },
            icon:const Icon(Icons.arrow_back_ios)),
      ),
    );
  }
}

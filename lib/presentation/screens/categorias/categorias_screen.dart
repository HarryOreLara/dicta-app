import 'package:flutter/material.dart';

class CategoriasScreen extends StatefulWidget {
  const CategoriasScreen({super.key});

  @override
  State<CategoriasScreen> createState() => _CategoriasScreenState();
}

class _CategoriasScreenState extends State<CategoriasScreen> {
  List<bool> _selections = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categorias"),
      ),
      body: Center(
        child: ToggleButtons(
          borderRadius: BorderRadius.circular(20.0),
          isSelected: _selections,
          onPressed: (index) {
            setState(() {
              for (int buttonIndex = 0;
                  buttonIndex < _selections.length;
                  buttonIndex++) {
                _selections[buttonIndex] = buttonIndex == index;
              }
            });
          },
          children: const [
            Text("data 1"),
            Text("data 2"),
            Text("data 3"),
          ],
        ),
      ),
    );
  }
}

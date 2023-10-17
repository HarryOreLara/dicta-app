import 'package:flutter/material.dart';

class ColaboradoresCustomAppbar extends StatefulWidget {
  const ColaboradoresCustomAppbar({super.key});

  @override
  State<ColaboradoresCustomAppbar> createState() =>
      _ColaboradoresCustomAppbarState();
}

class _ColaboradoresCustomAppbarState extends State<ColaboradoresCustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              const Icon(Icons.star),
              const SizedBox(
                width: 5,
              ),
              const Text("Colaboradores buscar"),
              const Spacer(),
              IconButton(
                  onPressed: () {
                    //showSearch(context: context, delegate: SearchColaboradorDelegate())
                  },
                  icon: const Icon(Icons.search))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:dicta_app/presentation/bloc/cursos/cursos_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OneCursoScreen extends StatefulWidget {
  final String id;
  final String nombre;
  const OneCursoScreen({super.key, required this.id, required this.nombre});

  @override
  State<OneCursoScreen> createState() => _OneCursoScreenState();
}

class _OneCursoScreenState extends State<OneCursoScreen> {
  @override
  void initState() {
    context.read<CursosBloc>().add(GetOneCurso(nombre: widget.nombre));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CursosBloc, CursosState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.nombre),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {
                  context.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios)),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ClipRRect(
                    child: Image.network(
                        "https://static.mercadonegro.pe/wp-content/uploads/2020/10/15171525/cursos-virtuales.jpg"),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Text(
                      state.cursoModel?.descripcion ?? "dsd",
                      style: const TextStyle(fontSize: 30.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:dicta_app/presentation/bloc/colaboradores/colaboradores_bloc.dart';
import 'package:dicta_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ColaboradoresScreen extends StatefulWidget {
  const ColaboradoresScreen({super.key});
  @override
  State<ColaboradoresScreen> createState() => _ColaboradoresScreenState();
}

class _ColaboradoresScreenState extends State<ColaboradoresScreen> {
  @override
  void initState() {
    context.read<ColaboradoresBloc>().add(GetAllCursosColaboradores());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocBuilder<ColaboradoresBloc, ColaboradoresState>(
      builder: (context, state) {
        if (state.error != '') {
          Future.delayed(Duration.zero, () {
            context.read<ColaboradoresBloc>()
              ..add(ColaboradoresInit())
              ..add(GetAllCursosColaboradores());
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                state.error,
                style: const TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.red,
            ));
            Navigator.pop(context);
          });
        }

        return Scaffold(
            body: Container(
          padding: const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Colaboradores",
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                        fontFamily: 'Gotham-Medium',
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  const Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Aprende mas..",
                      style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Expanded(child: Container()),
                  const Expanded(
                    child: Text(
                      "ver tus cursos...",
                      style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.blueAccent,
                          fontFamily: 'Gotham-Bold',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Descubre los cursos que tenemos para ti",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black87),
                    ),
                  )
                ],
              ),
              state.loading
                  ? const CustomCircularProgres()
                  : Expanded(
                      child: OverflowBox(
                        child: MediaQuery.removePadding(
                          removeTop: true,
                          context: context,
                          child: ListView.builder(
                            itemCount: state.listCursoColaboradores.length,
                            itemBuilder: (context, index) {
                              final curso = state.listCursoColaboradores[index];
                              return Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      context.push(
                                          '/oneCurso/${curso.id}/${curso.nombre}');
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 5),
                                      width: (size.width - 0) / 1.4,
                                      height: 170,
                                      margin: const EdgeInsets.only(
                                          left: 30.0, bottom: 15, top: 15),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          gradient: LinearGradient(colors: [
                                            const Color(0xFF0864c5)
                                                .withOpacity(0.8),
                                            const Color.fromARGB(
                                                255, 30, 212, 157)
                                          ]),
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 20,
                                                offset: const Offset(5, 10),
                                                color: Colors.blueAccent
                                                    .withOpacity(0.5)),
                                          ]),
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            child: Image.network(
                                              'https://static.mercadonegro.pe/wp-content/uploads/2020/10/15171525/cursos-virtuales.jpg',
                                              width: size.width * 0.4,
                                            ),
                                          ),
                                          Center(
                                            child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Text(
                                                curso.nombre,
                                                maxLines: 1,
                                                style: const TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    )
            ],
          ),
        ));
      },
    );
  }
}

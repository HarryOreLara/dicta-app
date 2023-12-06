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
    final size = MediaQuery.of(context).size;

    return BlocBuilder<CursosBloc, CursosState>(
      builder: (context, state) {
        if (state.error != '') {
          Future.delayed(Duration.zero, () {
            context.read<CursosBloc>()
              ..add(CursosInit())
              ..add(GetOneCurso(nombre: widget.nombre));
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
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 2.0,
                          spreadRadius: 5.0,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      child: Image.network(
                          fit: BoxFit.fill,
                          "https://static.mercadonegro.pe/wp-content/uploads/2020/10/15171525/cursos-virtuales.jpg"),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Detalles",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Gotham-Medium',
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: const LinearGradient(colors: [
                                  Colors.purpleAccent,
                                  Colors.purple
                                ])),
                            width: size.width * 0.4,
                            height: size.height * 0.1,
                            child: Center(
                              child: Text(
                                state.cursoModel?.categoria ?? "",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontFamily: 'Gotham-Light',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: const LinearGradient(
                                    colors: [Colors.blueAccent, Colors.blue])),
                            width: size.width * 0.4,
                            height: size.height * 0.1,
                            child: Center(
                              child: Text(
                                state.cursoModel?.subcategoria ?? "",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontFamily: 'Gotham-Light',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: const LinearGradient(colors: [
                                  Colors.orangeAccent,
                                  Colors.orange
                                ])),
                            width: size.width * 0.4,
                            height: size.height * 0.1,
                            child: Center(
                              child: Text(
                                state.cursoModel?.idioma ?? "",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontFamily: 'Gotham-Light',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: const LinearGradient(
                                    colors: [Colors.redAccent, Colors.red])),
                            width: size.width * 0.4,
                            height: size.height * 0.1,
                            child: Center(
                              child: Text(
                                state.cursoModel?.nivel ?? "",
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 17.0,
                                    fontFamily: 'Gotham-Light',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Descripcion",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Gotham-Medium',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color:
                                    Colors.grey[200], // Usar un color más suave
                              ),
                              child: Text(
                                state.cursoModel?.descripcion ?? "",
                                style: const TextStyle(fontSize: 16.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Creador",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontFamily: 'Gotham-Medium',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color:
                                    Colors.grey[200], // Usar un color más suave
                              ),
                              child: Text(
                                state.cursoModel?.nombreCreador ?? "",
                                softWrap:
                                    true, // Esto permite que el texto se divida en varias líneas
                                style: const TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: ComprarBottomPersonalized(
              precio: state.cursoModel?.precio ?? 0),
        );
      },
    );
  }
}

class ComprarBottomPersonalized extends StatelessWidget {
  final num precio;
  const ComprarBottomPersonalized({
    super.key,
    required this.precio,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 80.0, // Ajusta la altura según tus necesidades
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Precio:',
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
          Text(
            '\$$precio', // Ajusta según la propiedad de tu modelo
            style: const TextStyle(color: Colors.white, fontSize: 18.0),
          ),
          ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón (puedes abrir un carrito de compras, por ejemplo)
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            child: const Text(
              'Comprar',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}

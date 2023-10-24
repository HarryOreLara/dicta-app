import 'package:dicta_app/presentation/widgets/formularios/input_perfil.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: size.width * 1,
              height: size.height * 0.45,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 0, 0, 0)
              ])),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              context.go("/");
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                        Text(
                          "Perfil",
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 25.0,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Tocando foto de perfil");
                        },
                        child: const CircleAvatar(
                          radius: 65.0,
                          foregroundImage: NetworkImage(
                              "https://static.vecteezy.com/system/resources/previews/007/786/824/non_2x/hacker-in-simple-flat-personal-profile-icon-or-symbol-people-concept-illustration-vector.jpg"),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Harry Ore",
                        style: GoogleFonts.montserrat(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Stack(
                    children: [
                      Positioned(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              context.push('/historial');
                            },
                            child: Card(
                              elevation: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0)),
                                width: 100.0,
                                height: 60.0,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Historial",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'Gotham-Bold',
                                          color: Color(0xFF0077BF)),
                                    ),
                                    Text(
                                      "16",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Gotham-Bold'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              print("Amigos");
                            },
                            child: Card(
                              elevation: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0)),
                                width: 100.0,
                                height: 60.0,
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Cursos",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontFamily: 'Gotham-Bold',
                                          color: Color(0xFF0077BF)),
                                    ),
                                    Text(
                                      "16",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontFamily: 'Gotham-Bold'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))
                    ],
                  )
                ],
              ),
            ),
            InvertedElegantClipPath2(),
          ],
        ),
      ),
    );
  }
}

class InvertedElegantClipPath2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: InvertedElegantClipper2(),
          child: Container(
            height: 200, // Altura de la forma elegante
            color: Colors.white, // Color de fondo
          ),
        ),
        const _FormPerfil()
      ],
    );
  }
}

class InvertedElegantClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Punto de inicio
    path.moveTo(0, size.height * 0.5);

    // Curva hacia abajo (inversa)
    path.quadraticBezierTo(
        size.width / 4, size.height * 0.7, size.width / 2, size.height * 0.5);

    // Curva hacia arriba (inversa)
    path.quadraticBezierTo(
        size.width * 3 / 4, size.height * 0.3, size.width, size.height * 0.5);

    // Línea recta hacia arriba (inversa)
    path.lineTo(size.width, 0);

    // Línea recta hacia la izquierda (inversa)
    path.lineTo(0, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class _FormPerfil extends StatelessWidget {
  const _FormPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: size.width * 1,
              height: size.height * 0.5,
              child: Form(
                child: Column(
                  children: [
                    const InputPerfil(
                      label: "Nombres",
                    ),
                    const InputPerfil(
                      label: "Apellidos",
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    FilledButton.icon(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        foregroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 0, 102, 185)),
                        padding: MaterialStateProperty.all(const EdgeInsets
                            .symmetric(
                            vertical: 15,
                            horizontal:
                                40)), // Ajusta los valores para el espaciado interno
                        minimumSize: MaterialStateProperty.all(const Size(
                            200, 50)), // Ajusta el tamaño mínimo del botón
                      ),
                      onPressed: () async {
                        print("Lazando el evento registrar persona");
                      },
                      icon: const Icon(Icons.person),
                      label: const Text(
                        "Actualizar",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
            // InvertedElegantClipPath2(),
            _FormPerfil()
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
        _FormPerfil()
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
  final formKey = GlobalKey<FormState>();
  final nombreController = TextEditingController();
  final apellidoPatController = TextEditingController();
  final apellidoMatController = TextEditingController();
  final dniController = TextEditingController();
  final edadController = TextEditingController();
  final telefonoController = TextEditingController();
  final generoController = TextEditingController();

  _FormPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  controller: nombreController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Este campo es obligatorio';
                    }
                    if (value.length > 15) {
                      return 'Su nombre es muy grande';
                    }
                    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                      return 'Ingrese solo letras';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando está enfocado
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando no está enfocado
                      ),
                      label: Text(
                        "Nombres",
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontFamily: 'Gotham-Black',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900),
                      ),
                      errorText: "",
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
                TextFormField(
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  controller: apellidoPatController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Este campo es obligatorio';
                    }
                    if (value.length > 15) {
                      return 'Su apellido es muy grande';
                    }
                    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                      return 'Ingrese solo letras';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando está enfocado
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando no está enfocado
                      ),
                      label: Text(
                        "Apellido Paterno",
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontFamily: 'Gotham-Black',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900),
                      ),
                      errorText: "",
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
                TextFormField(
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  controller: apellidoMatController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Este campo es obligatorio';
                    }
                    if (value.length > 15) {
                      return 'Su apellido es muy grande';
                    }
                    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                      return 'Ingrese solo letras';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando está enfocado
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando no está enfocado
                      ),
                      label: Text(
                        "Apellido Materno",
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontFamily: 'Gotham-Black',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900),
                      ),
                      errorText: "",
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
                TextFormField(
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  controller: dniController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Este campo es obligatorio';
                    }
                    if (value.length > 15 || value.length < 5) {
                      return 'Formado de dni incorrecto';
                    }
                    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                      return 'Ingrese solo números';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando está enfocado
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando no está enfocado
                      ),
                      label: Text(
                        "Dni",
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontFamily: 'Gotham-Black',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900),
                      ),
                      errorText: "",
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
                TextFormField(
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  controller: edadController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Este campo es obligatorio';
                    }
                    if (value.length > 3 || value.length <= 1) {
                      return 'Formado de edad incorrecto';
                    }
                    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                      return 'Ingrese solo números';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando está enfocado
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando no está enfocado
                      ),
                      label: Text(
                        "Edad",
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontFamily: 'Gotham-Black',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900),
                      ),
                      errorText: "",
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
                TextFormField(
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  controller: generoController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Este campo es obligatorio';
                    }
                    if (value.length > 15 || value.length <= 6) {
                      return 'Tamaño de genero incorrecto';
                    }
                    if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                      return 'Ingrese solo letras';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando está enfocado
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando no está enfocado
                      ),
                      label: Text(
                        "genero",
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontFamily: 'Gotham-Black',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900),
                      ),
                      errorText: "",
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
                TextFormField(
                  style: const TextStyle(fontSize: 20.0, color: Colors.white),
                  controller: telefonoController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Este campo es obligatorio';
                    }
                    if (value.length > 18 || value.length <= 4) {
                      return 'Formado de telefono incorrecto';
                    }
                    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                      return 'Ingrese solo números';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      hoverColor: Colors.white,
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando está enfocado
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors
                                .white), // Color del borde cuando no está enfocado
                      ),
                      label: Text(
                        "Telefono",
                        style: TextStyle(
                            color: Colors.grey.shade300,
                            fontFamily: 'Gotham-Black',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w900),
                      ),
                      errorText: "",
                      hintStyle: const TextStyle(color: Colors.grey)),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                FilledButton.icon(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
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
                    if (formKey.currentState!.validate()) {
                      print("Lazando el evento registrar persona");
                    }
                    print("NO VALIDO");
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
        )
      ],
    );
  }
}

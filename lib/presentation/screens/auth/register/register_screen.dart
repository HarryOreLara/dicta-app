import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Colors.blue.shade900,
          Colors.blue.shade800,
          Colors.blue.shade400,
          Colors.white,
        ])),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Registrarse',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                    Text(
                      'Bienvenido',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ]),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: size.width * 1,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60))),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Form(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  10), // Ajusta el valor según sea necesario
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 6, 83, 156),
                                  blurRadius: 10,
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                errorStyle: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                ),
                                hintText: "Username..",
                                filled: true,
                                fillColor: Color.fromARGB(255, 255, 255, 255),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  10), // Ajusta el valor según sea necesario
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 6, 83, 156),
                                  blurRadius: 10,
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                errorStyle: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                ),
                                hintText: "Email..",
                                filled: true,
                                fillColor: Color.fromARGB(255, 255, 255, 255),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  10), // Ajusta el valor según sea necesario
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 6, 83, 156),
                                  blurRadius: 10,
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                errorStyle: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                ),
                                hintText: "Contraseña",
                                filled: true,
                                fillColor: Color.fromARGB(255, 255, 255, 255),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  10), // Ajusta el valor según sea necesario
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(255, 6, 83, 156),
                                  blurRadius: 10,
                                  offset: Offset(0, 2),
                                )
                              ],
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                errorStyle: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                ),
                                hintText: "Verificar contraseña..",
                                filled: true,
                                fillColor: Color.fromARGB(255, 255, 255, 255),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              fixedSize: const Size.fromWidth(
                                  250), // Ajusta el ancho según tus necesidades
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Registrarse",
                              style: TextStyle(
                                  fontFamily: 'Gotham-Medium',
                                  fontSize: 18.0,
                                  color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            'O',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              context.pop(context);
                            },
                            child: const Text(
                              'Iniciar Sesion',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

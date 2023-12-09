import 'package:dicta_app/infraestructure/models/models.dart';
import 'package:dicta_app/presentation/bloc/usuarios/usuarios_bloc.dart';
import 'package:dicta_app/presentation/widgets/auth/clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocBuilder<UsuariosBloc, UsuariosState>(
      builder: (context, state) {
        if (state.error != "") {
          Future.delayed(Duration.zero, () {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          });
        }

        if (state.succesfully) {
          Future.delayed(Duration.zero, () {
            context.push('/main');
          });
        }

        return Scaffold(
            backgroundColor: const Color.fromARGB(255, 0, 102, 185),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      width: size.width * 1,
                      color: Colors.white,
                      height: 200,
                      child: const SizedBox(
                        child: Center(
                          child: Text(
                            'Iniciar Sesión',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 102, 185),
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Container(
                            width: size.width * 1,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 6, 83, 156),
                                      blurRadius: 10,
                                      offset: Offset(0, 2))
                                ]),
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
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                  child: TextFormField(
                                    controller: emailController,
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.0,
                                      ),
                                      hintText: "Email..",
                                      filled: true,
                                      fillColor:
                                          Color.fromARGB(255, 255, 255, 255),
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
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                  child: TextFormField(
                                    controller: passwordController,
                                    decoration: const InputDecoration(
                                      errorStyle: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.0,
                                      ),
                                      hintText: "Contraseña...",
                                      filled: true,
                                      fillColor:
                                          Color.fromARGB(255, 255, 255, 255),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: const Size.fromWidth(
                                250), // Ajusta el ancho según tus necesidades
                          ),
                          onPressed: () {
                            final usuarioModel = UsuarioModel(
                                username: "",
                                passwordTwo: "",
                                token: "",
                                email: emailController.text.trim(),
                                estado: true,
                                password: passwordController.text.trim());
                            if (formKey.currentState!.validate()) {
                              context.read<UsuariosBloc>().add(
                                  LoginUsuario(usuarioModel: usuarioModel));
                            }
                          },
                          child: const Text(
                            "Inciar Sesión",
                            style: TextStyle(
                                fontFamily: 'Gotham-Medium',
                                fontSize: 20.0,
                                color: Colors.blue),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'O',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            context.push('/register');
                          },
                          child: const Text(
                            'Registrarse',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }
}

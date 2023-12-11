import 'package:dicta_app/infraestructure/models/models.dart';
import 'package:dicta_app/presentation/bloc/usuarios/usuarios_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmationController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    passwordConfirmationController.dispose();
    super.dispose();
  }

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
          body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topCenter, colors: [
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
              Color.fromARGB(255, 0, 0, 0),
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
                          key: formKey,
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
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: TextFormField(
                                  controller: usernameController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Este campo es obligatorio';
                                    }
                                    if (value.length > 15) {
                                      return 'Su username es muy grande';
                                    }
                                    if (value.length <= 4) {
                                      return 'Su username es muy pequeño';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                    ),
                                    hintText: "Username..",
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 255, 255, 255),
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
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: TextFormField(
                                  controller: emailController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Este campo es obligatorio';
                                    }
                                    if (value.length > 25) {
                                      return 'Su email es muy grande';
                                    }
                                    final emailRegex = RegExp(
                                        r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
                                    if (!emailRegex.hasMatch(value)) {
                                      return 'Ingrese un correo electrónico válido';
                                    }
                                    return null;
                                  },
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
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: TextFormField(
                                  controller: passwordController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Este campo es obligatorio';
                                    }
                                    if (value.length > 20) {
                                      return 'Su contraseña es muy grande';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                    ),
                                    hintText: "Contraseña",
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
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: TextFormField(
                                  controller: passwordConfirmationController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Este campo es obligatorio';
                                    }
                                    if (value.length > 25) {
                                      return 'Su contraseña es muy grande';
                                    }
                                    return null;
                                  },
                                  decoration: const InputDecoration(
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13.0,
                                    ),
                                    hintText: "Verificar contraseña..",
                                    filled: true,
                                    fillColor:
                                        Color.fromARGB(255, 255, 255, 255),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 40.0,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                  fixedSize: const Size.fromWidth(
                                      250), // Ajusta el ancho según tus necesidades
                                ),
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    final usuarioModel = UsuarioModel(
                                        username:
                                            usernameController.text.trim(),
                                        email: emailController.text.trim(),
                                        estado: true,
                                        password:
                                            passwordController.text.trim(),
                                        passwordTwo:
                                            passwordConfirmationController.text
                                                .trim(),
                                        token: "token");
                                    context.read<UsuariosBloc>().add(
                                        RegistroUsuario(
                                            usuarioModel: usuarioModel));
                                  }
                                },
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
                                      color: Color.fromARGB(255, 0, 0, 0),
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
      },
    );
  }
}

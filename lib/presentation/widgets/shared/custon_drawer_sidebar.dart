import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawerSidemenu extends StatelessWidget {
  const CustomDrawerSidemenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const gotham = 'Gotham-Medium';

    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0)),
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 0, 0, 0),
                    Color.fromARGB(255, 0, 0, 0)
                  ]),
                ),
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://tipsparatuviaje.com/wp-content/uploads/2019/07/trujillo-peru-1.jpg'),
                      radius: 42.0,
                    ),
                    Text(
                      'Harry Ore',
                      style: GoogleFonts.montserrat(
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'harryorelara@gmail.com',
                      style: TextStyle(
                          fontFamily: 'Gotham-Book',
                          color: Colors.white,
                          fontSize: 12.0),
                    ),
                  ],
                )),
            ListTile(
              leading: const Icon(Icons.account_circle),
              iconColor: Colors.orange.shade300,
              title: const Text(
                'Mi Perfil',
                style: TextStyle(fontFamily: gotham, fontSize: 15.0),
              ),
              onTap: () {
                // Agregar la lógica para manejar el clic en el elemento del Drawer
                context.go('/perfil');
              },
              subtitle: const Text("Administra tu perfil a tu manera"),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1.0, // Grosor del separador
              height: 1.0, // Altura del separador
              indent: 16.0, // Espacio en blanco a la izquierda del separador
              endIndent: 16.0,
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              iconColor: Colors.green,
              title: const Text(
                'Configuracion',
                style: TextStyle(fontFamily: gotham, fontSize: 15.0),
              ),
              onTap: () {
                // Agregar la lógica para manejar el clic en el elemento del Drawer
                context.go('/configuracion');
              },
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1.0, // Grosor del separador
              height: 1.0, // Altura del separador
              indent: 16.0, // Espacio en blanco a la izquierda del separador
              endIndent: 16.0,
            ),
            ListTile(
              leading: const Icon(Icons.history),
              iconColor: Colors.purple,
              title: const Text(
                'Historial',
                style: TextStyle(fontFamily: gotham, fontSize: 15.0),
              ),
              onTap: () {
                // Agregar la lógica para manejar el clic en el elemento del Drawer
                context.go('/historial');
              },
            ),
            const Divider(
              color: Colors.grey,
              thickness: 1.0, // Grosor del separador
              height: 1.0, // Altura del separador
              indent: 16.0, // Espacio en blanco a la izquierda del separador
              endIndent: 16.0,
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              iconColor: Colors.red,
              title: const Text(
                'Cerrar Sesión',
                style: TextStyle(fontFamily: gotham, fontSize: 15.0),
              ),
              onTap: () {
                context.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

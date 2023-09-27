import 'package:animate_do/animate_do.dart';
import 'package:dicta_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const _HomeView(),
      drawer: FadeIn(child: const CustomDrawerSidemenu()),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [_CustomClipperHome(size: size)],
      ),
    );
  }
}

class _CustomClipperHome extends StatelessWidget {
  const _CustomClipperHome({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalClipper(),
      child: Container(
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
          Color.fromARGB(255, 0, 0, 0),
          Color.fromARGB(255, 0, 0, 0)
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        height: 200,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
            SizedBox(
                width: size.width * 1,
                child: Center(
                    child: Text('Home',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold))))),
          ],
        ),
      ),
    );
  }
}

import 'package:animate_do/animate_do.dart';
import 'package:dicta_app/presentation/bloc/cursos/cursos_bloc.dart';
import 'package:dicta_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<CursosBloc>().add(GetAllCursos());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CursosBloc, CursosState>(
      builder: (context, state) {
        return Scaffold(
          body: _HomeView(
            numero: state.listaCursos.length,
          ),
          drawer: FadeIn(child: const CustomDrawerSidemenu()),
        );
      },
    );
  }
}

class _HomeView extends StatelessWidget {
  final int numero;
  const _HomeView({super.key, required this.numero});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          _CustomClipperHome(size: size),
          const SizedBox(
            height: 25.0,
          ),
          const InformationSlideshow(),
          const SizedBox(
            height: 25.0,
          ),
          const InformationHorizontalLisview(),
          const SizedBox(
            height: 10.0,
          ),
          const ListCards(),
        ],
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
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                // colors: [Color(0xFF448AFF), Color(0xFF69F0AE)],
                colors: [Colors.black, Colors.black],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft)),
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

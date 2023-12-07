import 'package:dicta_app/presentation/bloc/cursos/cursos_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CursoCompradoScreen extends StatefulWidget {
  final String id;
  final String nombre;

  const CursoCompradoScreen({
    Key? key,
    required this.id,
    required this.nombre,
  }) : super(key: key);

  @override
  State<CursoCompradoScreen> createState() => _CursoCompradoScreenState();
}

class _CursoCompradoScreenState extends State<CursoCompradoScreen> {
  late YoutubePlayerController _controller;
  late bool _seccion1Expanded;
  late bool _seccion2Expanded;

  @override
  void initState() {
    context.read<CursosBloc>().add(GetOneCurso(nombre: widget.nombre));
    _seccion1Expanded = false;
    _seccion2Expanded = false;
    _controller = YoutubePlayerController(
      initialVideoId: 'LVXt_4cYFW8',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CursosBloc, CursosState>(builder: (context, state) {
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
            icon: const Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Column(
          children: [
            // Video Player
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.blueAccent,
                progressColors: const ProgressBarColors(
                  playedColor: Colors.blue,
                  handleColor: Colors.blueAccent,
                ),
              ),
            ),
            // Secciones
            buildAccordion(
              title: 'Sección 1',
              content: buildSectionContent('Introduccion al curso'),
              isExpanded: _seccion1Expanded,
              onPressed: () {
                setState(() {
                  _seccion1Expanded = !_seccion1Expanded;
                  _seccion2Expanded =
                      false; // Cerrar la otra sección si está abierta
                });
              },
            ),
            buildAccordion(
              title: 'Sección 2',
              content: buildSectionContent('Clase 1'),
              isExpanded: _seccion2Expanded,
              onPressed: () {
                setState(() {
                  _seccion2Expanded = !_seccion2Expanded;
                  _seccion1Expanded =
                      false; // Cerrar la otra sección si está abierta
                });
              },
            ),
          ],
        ),
      );
    });
  }

  Widget buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(content),
    );
  }

  Widget buildAccordion({
    required String title,
    required Widget content,
    required bool isExpanded,
    required VoidCallback onPressed,
  }) {
    return ExpansionPanelList(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.zero,
      expansionCallback: (int index, bool isExpanded) {
        onPressed();
      },
      children: [
        ExpansionPanel(
          isExpanded: isExpanded,
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(title),
            );
          },
          body: content,
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

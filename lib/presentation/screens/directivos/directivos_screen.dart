import 'package:flutter/material.dart';

class DirectivosScreen extends StatelessWidget {
  const DirectivosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width * 1,
              height: size.height * 0.2,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.orangeAccent, Colors.amberAccent])),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("DIRECTIVOS"), TextField()],
                ),
              ),
            ),
            Container(
              height: size.height * 0.15,
              width: size.width * 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://img.freepik.com/vector-gratis/fondo-azul-degradado_23-2149346090.jpg'),
                    fit: BoxFit.fill),
              ),
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const Center(
                child: Text(
                  "Se un directivo con exlusividad en nuestra plataforma",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                  textAlign: TextAlign.center,
                  maxLines: 3,
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                height: size.height * 0.15,
                width: size.width * 1,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Quieres aprender de la mejor forma?",
                      style: TextStyle(
                          fontSize: 20.0, fontFamily: 'Gotham-Medium'),
                    ),
                    Text(
                      "Elije un curso que se acomode a ti",
                      style:
                          TextStyle(fontFamily: 'Gotham-Light', fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Ver mas...",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              fontFamily: 'Gotham-Light',
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ],
                    ),
                  ],
                )),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150.0,
                        width: 180.0,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      Container(
                        height: 150.0,
                        width: 180.0,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150.0,
                        width: 180.0,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      Container(
                        height: 150.0,
                        width: 180.0,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 150.0,
                        width: 180.0,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      Container(
                        height: 150.0,
                        width: 180.0,
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

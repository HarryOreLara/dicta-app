import 'package:flutter/material.dart';

class ColaboradoresScreen extends StatefulWidget {
  const ColaboradoresScreen({super.key});

  @override
  State<ColaboradoresScreen> createState() => _ColaboradoresScreenState();
}

class _ColaboradoresScreenState extends State<ColaboradoresScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 10.0, left: 30.0, right: 30.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Colaboradores",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w700),
              ),
              Expanded(child: Container()),
              const Icon(
                Icons.search,
                size: 30.0,
                color: Colors.black,
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              const Expanded(
                child: Text(
                  "Aprende mas..",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Expanded(child: Container()),
              const Expanded(
                child: Text(
                  "ver tus cursos...",
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            width: size.width,
            height: 220.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color(0xFF448AFF).withOpacity(0.8),
                  const Color(0xFF69F0AE).withOpacity(0.9)
                ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80.0),
                    bottomLeft: Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(5, 10),
                      blurRadius: 20.0,
                      color: Colors.blueAccent.withOpacity(0.5))
                ]),
            child: Container(
              padding: const EdgeInsets.only(left: 20, top: 25, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hola",
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "Deseas aprender",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "Sobre la educacion digital",
                    style: TextStyle(fontSize: 25.0, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 22.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.book_sharp,
                            size: 20.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Aprender es la mejor opcion",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          )
                        ],
                      ),
                      Expanded(child: Container()),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 60.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          const Row(
            children: [
              Expanded(
                child: Text(
                  "Descubre los cursos que tenemos para ti",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87),
                ),
              )
            ],
          ),
          Expanded(
            child: OverflowBox(
              maxWidth: size.width,
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          width: (size.width - 90) / 2,
                          height: 170,
                          margin: const EdgeInsets.only(
                              left: 30.0, bottom: 15, top: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              gradient: LinearGradient(colors: [
                                const Color(0xFF0864c5).withOpacity(0.8),
                                const Color.fromARGB(255, 30, 212, 157)
                              ]),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20,
                                    offset: const Offset(5, 10),
                                    color: Colors.blueAccent.withOpacity(0.5)),
                              ]),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.network(
                                  'https://static.mercadonegro.pe/wp-content/uploads/2020/10/15171525/cursos-virtuales.jpg',
                                  width: size.width * 0.4,
                                ),
                              ),
                              const Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Cursos",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(bottom: 5),
                          width: (size.width - 90) / 2,
                          height: 170,
                          margin: const EdgeInsets.only(
                              left: 30.0, bottom: 15, top: 15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              gradient: LinearGradient(colors: [
                                const Color(0xFF0864c5).withOpacity(0.8),
                                const Color.fromARGB(255, 30, 212, 157)
                                    .withOpacity(0.9),
                              ]),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 20,
                                    offset: const Offset(5, 10),
                                    color: Colors.blueAccent.withOpacity(0.5)),
                              ]),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.network(
                                  'https://static.mercadonegro.pe/wp-content/uploads/2020/10/15171525/cursos-virtuales.jpg',
                                  width: size.width * 0.4,
                                ),
                              ),
                              const Center(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "Cursos",
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

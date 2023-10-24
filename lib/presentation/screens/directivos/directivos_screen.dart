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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  children: [
                    Text(
                      "DIRECTIVOS",
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Gotham-Book'),
                    ),
                    TextField(
                      decoration: InputDecoration(),
                    )
                  ],
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
                        'https://pqs.pe/wp-content/uploads/2021/02/PQS-tecnicas-estudios-2020.jpg'),
                    fit: BoxFit.fill),
              ),
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              // child: const Center(
              //   child: Text(
              //     "Se un directivo con exlusividad en nuestra plataforma",
              //     style: TextStyle(
              //         color: Color.fromARGB(255, 255, 0, 0),
              //         fontSize: 20.0,
              //         fontWeight: FontWeight.bold,
              //         fontFamily: 'Gotham-Book'),
              //     textAlign: TextAlign.center,
              //     maxLines: 3,
              //   ),
              // ),
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
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _PromocionesCards(largo: 0.45, alto: 0.30),
                _PromocionesCards(largo: 0.45, alto: 0.30),
              ],
            ),
            _CardBottom(size: size)
          ],
        ),
      ),
    );
  }
}

class _PromocionesCards extends StatelessWidget {
  final double largo;
  final double alto;

  const _PromocionesCards({
    super.key,
    required this.largo,
    required this.alto,
  });

//0.5
//0.25
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * largo,
      height: size.height * alto,
      child: Card(
        color: Colors.white,
        elevation: 1,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                'https://static.mercadonegro.pe/wp-content/uploads/2020/10/15171525/cursos-virtuales.jpg',
                width: size.width * 0.4,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      "Curso",
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Gotham-Black',
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        gradient:
                            LinearGradient(colors: [Colors.red, Colors.red])),
                    child: const Text(
                      '15% de descuento',
                      style: TextStyle(fontSize: 11.0),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'USD 25.00',
                    style: TextStyle(
                        color: Color(0xFF003976),
                        fontSize: 10.0,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: Colors.red,
                        decorationThickness: 2.0),
                  ),
                  Text(
                    'USD 20.0',
                    style: TextStyle(fontSize: 15.0, color: Color(0xFF003976)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardBottom extends StatelessWidget {
  const _CardBottom({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.95,
      height: size.height * 0.20,
      child: Card(
        color: Colors.white,
        elevation: 1,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.network(
                  'https://static.mercadonegro.pe/wp-content/uploads/2020/10/15171525/cursos-virtuales.jpg',
                  width: size.width * 0.4,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  children: [
                    const Text(
                      "Curso 1",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontFamily: 'Gotham-Black'),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.computer),
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(Icons.book_sharp),
                        SizedBox(
                          width: 15.0,
                        ),
                        Icon(Icons.person)
                      ],
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      decoration: const BoxDecoration(
                          gradient:
                              LinearGradient(colors: [Colors.red, Colors.red])),
                      child: const Text(
                        '15% de descuento',
                        style: TextStyle(fontSize: 11.0),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Row(
                      children: [
                        Text(
                          'Premiun',
                          style: TextStyle(fontFamily: 'Gotham-Book'),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Row(
                          children: [
                            Text(
                              'USD 25.00',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Color(0xFF003976),
                                  fontSize: 10.0,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.red,
                                  decorationThickness: 2.0),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'USD 20.0',
                              style: TextStyle(
                                  fontSize: 15.0, color: Color(0xFF003976)),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

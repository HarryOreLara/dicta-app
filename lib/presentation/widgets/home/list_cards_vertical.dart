import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListCards extends StatelessWidget {
  const ListCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        shape: BeveledRectangleBorder(
          borderRadius:
              BorderRadius.circular(20.0), // Ajusta el radio del borde chapado
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              gradient: const LinearGradient(
                  colors: [Colors.blueAccent, Colors.purpleAccent])),
          width: size.width * 1,
          height: size.height * 0.2,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: size.width * 0.7,
                      child: Text(
                        "Como educar a tus hijos en la era digital",
                        style: GoogleFonts.montserrat(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "Curso popular",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.0, fontWeight: FontWeight.w500),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ],
                    )
                  ],
                ),
                const Column(
                  children: [
                    Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.white,
                      size: 40.0,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

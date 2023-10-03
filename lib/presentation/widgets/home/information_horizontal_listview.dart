import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationHorizontalLisview extends StatefulWidget {
  const InformationHorizontalLisview({super.key});

  @override
  State<InformationHorizontalLisview> createState() =>
      _InformationHorizontalLisviewState();
}

class _InformationHorizontalLisviewState
    extends State<InformationHorizontalLisview> {
  @override
  Widget build(BuildContext context) {
    return const _SlideCards();
  }
}

class _SlideCards extends StatelessWidget {
  const _SlideCards();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.18,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Card(
                    elevation: 3,
                    child: SizedBox(
                      height: 130.0,
                      width: 130.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.person,
                            size: 40.0,
                            color: Colors.green,
                          ),
                          Text(
                            "Informacion",
                            style: GoogleFonts.montserrat(),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

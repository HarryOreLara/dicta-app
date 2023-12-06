import 'package:animate_do/animate_do.dart';
import 'package:dicta_app/config/constants/home_constats.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:go_router/go_router.dart';

class InformationSlideshow extends StatelessWidget {
  const InformationSlideshow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
        height: 210,
        width: double.infinity,
        child: Swiper(
          viewportFraction: 0.8,
          scale: 0.9,
          autoplay: true,
          pagination: SwiperPagination(
              margin: const EdgeInsets.only(top: 0),
              builder: DotSwiperPaginationBuilder(
                  activeColor: colors.primary, color: colors.secondary)),
          itemCount: listHomeSlider.length,
          itemBuilder: (context, index) {
            final curso = listHomeSlider[index];
            return _Slide(
              urlImagen: curso.imagencurso,
              id: curso.id,
              nombre: curso.nombre,
            );
          },
        ));
  }
}

class _Slide extends StatelessWidget {
  final String id;
  final String nombre;
  final String? urlImagen;
  const _Slide(
      {required this.urlImagen, required this.id, required this.nombre});

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black45, blurRadius: 1, offset: Offset(0, 5))
        ]);

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: InkWell(
        onTap: () {
          context.push('/oneCurso/$id/$nombre');
        },
        child: DecoratedBox(
            decoration: decoration,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  urlImagen ??
                      "https://static.mercadonegro.pe/wp-content/uploads/2020/10/15171525/cursos-virtuales.jpg",
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress != null) {
                      return const DecoratedBox(
                          decoration: BoxDecoration(color: Colors.black12));
                    }
                    return FadeIn(child: child);
                  },
                ))),
      ),
    );
  }
}

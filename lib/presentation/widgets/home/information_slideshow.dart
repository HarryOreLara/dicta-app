import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class InformationSlideshow extends StatelessWidget {
  const InformationSlideshow({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> list = ["", "", "", "", ""];
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
          itemCount: list.length,
          itemBuilder: (context, index) {
            return const _Slide();
          },
        ));
  }
}

class _Slide extends StatelessWidget {
  const _Slide();

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(color: Colors.black45, blurRadius: 1, offset: Offset(0, 5))
        ]);

    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: DecoratedBox(
          decoration: decoration,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://assets.xboxservices.com/assets/2c/7e/2c7eaa9b-4da1-4f3d-9a5e-23ad011df07d.jpg?n=Naraka-Bladepoint_GLP-Page-Hero-1084_Season-9_1920x1080_01.jpg",
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress != null) {
                    return const DecoratedBox(
                        decoration: BoxDecoration(color: Colors.black12));
                  }
                  return FadeIn(child: child);
                },
              ))),
    );
  }
}

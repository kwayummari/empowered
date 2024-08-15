import 'package:empowered/src/screens/carouselPage/TopHeader/TopHeader.dart';
import 'package:empowered/src/screens/carouselPage/TopHeader/topHeaderMobile.dart';
import 'package:empowered/src/screens/carouselPage/carouselImageMobile.dart';
import 'package:empowered/src/screens/carouselPage/carouselimage.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({super.key});

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      const double mobileBreakpoint = 600.0;
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/homepage.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              constraints.maxWidth < mobileBreakpoint
                  ? TopHeaderMobile()
                  : TopHeader(),
              SizedBox(
                height: 10,
              ),
              constraints.maxWidth < mobileBreakpoint
                  ? CarouselImageMobile() : CarouselImage()
            ],
          ),
        ),
      );
    });
  }
}

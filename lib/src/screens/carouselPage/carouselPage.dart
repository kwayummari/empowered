import 'package:empowered/src/screens/TopHeader/TopHeader.dart';
import 'package:empowered/src/screens/TopHeader/topHeaderMobile.dart';
import 'package:empowered/src/utils/app_const.dart';
import 'package:empowered/src/widgets/app_button.dart';
import 'package:empowered/src/widgets/app_text.dart';
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
              Padding(
                padding: const EdgeInsets.only(left: 100, right: 100),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          AppText(
                            txt: 'Girls and Women \nEmpowerment',
                            size: 60,
                            weight: FontWeight.bold,
                            color: AppConst.primary,
                          ),
                          AppText(
                            txt:
                                'Tempora class excepturi. Earum ipsam velit ex montes, \n explicabo ex adipisicing labore, fames quibusdam praesentium, \n nostrud eveniet, rutrum.',
                            size: 20,
                            color: AppConst.secondary,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                child: AppButton(
                                  onPress: () {},
                                  label: 'Discover more',
                                  borderRadius: 15,
                                  textColor: AppConst.white,
                                  solidColor: AppConst.primary,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              CircleAvatar(
                                child: Icon(
                                  Icons.play_circle_fill,
                                  color: AppConst.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              AppText(
                                txt: 'Watch video',
                                size: 15,
                                color: AppConst.secondary,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Stack(
                      children: [
                        Positioned(
                          top: 300,
                          left: 200,
                          child: Container(
                            width: 500,
                            height: 500,
                            decoration: BoxDecoration(
                              color: AppConst.primary,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/carousel.png',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

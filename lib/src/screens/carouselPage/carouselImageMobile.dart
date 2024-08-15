import 'package:empowered/src/utils/app_const.dart';
import 'package:empowered/src/widgets/app_button.dart';
import 'package:empowered/src/widgets/app_text.dart';
import 'package:flutter/material.dart';

class CarouselImageMobile extends StatelessWidget {
  const CarouselImageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                AppText(
                  txt: 'Girls and Women \nEmpowerment',
                  size: 20,
                  weight: FontWeight.bold,
                  color: AppConst.primary,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: AppText(
                    txt:
                        'Tempora class excepturi. Earum ipsam velit ex montes, \n explicabo ex adipisicing labore, fames quibusdam praesentium, \n nostrud eveniet, rutrum.',
                    size: 15,
                    color: AppConst.secondary,
                  ),
                ),
                SizedBox(
                  height: 20,
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
                      width: 10,
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
            width: 10,
          ),
          Stack(
            children: [
              Positioned(
                top: 60,
                left: 40,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: AppConst.subPrimary,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              Image.asset(
                'assets/carousel.png',
                width: 200,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

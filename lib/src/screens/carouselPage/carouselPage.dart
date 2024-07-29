import 'package:empowered/src/utils/app_const.dart';
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
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                    children: [
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
                        color: AppConst.primary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

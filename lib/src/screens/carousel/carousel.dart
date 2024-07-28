import 'package:empowered/src/utils/app_const.dart';
import 'package:empowered/src/widgets/app_text.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
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
                Icon(
                  Icons.email,
                  color: AppConst.primary,
                ),
                AppText(
                  txt: 'Company@domain.com',
                  size: 15,
                  color: AppConst.primary,
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  Icons.location_city,
                  color: AppConst.primary,
                ),
                AppText(
                  txt: 'Jl. Raya Puputan No 142, TZ - 80234',
                  size: 15,
                  color: AppConst.primary,
                ),
                Spacer(),
                Icon(Icons.facebook, color: AppConst.primary,),
                Icon(Icons., color: AppConst.primary,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

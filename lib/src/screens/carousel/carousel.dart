import 'package:empowered/src/utils/app_const.dart';
import 'package:empowered/src/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:empowered/src/widgets/app_base_screen.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return AppBaseScreen(
      bgcolor: AppConst.white,
      isvisible: false,
      backgroundImage: false,
      backgroundAuth: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              AppText(txt: 'Company@domain.com', size: 15, color: AppConst.primary,),
              AppText(txt: 'Jl. Raya Puputan No 142, TZ - 80234', size: 15, color: AppConst.primary,),
              Spacer(),
            ],
          )
        ],
      ),
    );
  }
}

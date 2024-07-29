import 'package:empowered/src/screens/TopHeader/TopHeader.dart';
import 'package:empowered/src/screens/TopHeader/topHeaderMobile.dart';
import 'package:empowered/src/screens/carouselPage/carouselPage.dart';
import 'package:empowered/src/utils/app_const.dart';
import 'package:flutter/material.dart';
import 'package:empowered/src/widgets/app_base_screen.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return AppBaseScreen(
      padding: const EdgeInsets.all(0.0),
      bgcolor: AppConst.white,
      isvisible: false,
      backgroundImage: false,
      backgroundAuth: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CarouselPage()
        ],
      ),
    );
  }
}

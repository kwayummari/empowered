import 'package:empowered/src/screens/TopHeader/TopHeader.dart';
import 'package:empowered/src/screens/TopHeader/topHeaderMobile.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;
    const double mobileBreakpoint = 600.0;

    return AppBaseScreen(
      bgcolor: AppConst.white,
      isvisible: false,
      backgroundImage: false,
      backgroundAuth: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          screenWidth < mobileBreakpoint ? TopHeaderMobile() : TopHeader(),
        ],
      ),
    );
  }
}

import 'package:empowered/src/screens/homePage/loginForm.dart';
import 'package:empowered/src/screens/homePage/sideTabFom.dart';
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
      bgcolor: AppConst.white,
      isvisible: false,
      backgroundImage: false,
      backgroundAuth: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              loginForm(),
              sideTabForm(),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:empowered/src/screens/models/layout/header.dart';
import 'package:empowered/src/screens/models/layout/sideBar.dart';
import 'package:empowered/src/utils/app_const.dart';
import 'package:empowered/src/widgets/app_base_screen.dart';
import 'package:flutter/material.dart';

class layout extends StatefulWidget {
  final Widget child;
  const layout({super.key, required this.child});

  @override
  State<layout> createState() => _layoutState();
}

class _layoutState extends State<layout> {
  @override
  Widget build(BuildContext context) {
    return AppBaseScreen(
      bgcolor: AppConst.white,
      isvisible: false,
      backgroundImage: false,
      backgroundAuth: false,
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          Row(
            children: [
              sideBar(),
              Header(child: widget.child),
            ],
          )
        ],
      ),
    );
  }
}

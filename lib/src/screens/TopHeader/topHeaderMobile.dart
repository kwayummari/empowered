import 'package:empowered/src/utils/app_const.dart';
import 'package:empowered/src/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopHeaderMobile extends StatefulWidget {
  const TopHeaderMobile({super.key});

  @override
  State<TopHeaderMobile> createState() => _TopHeaderMobileState();
}

class _TopHeaderMobileState extends State<TopHeaderMobile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: AppConst.black,
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Icon(
                  Icons.email,
                  color: AppConst.primary,
                ),
                SizedBox(
                  width: 10,
                ),
                AppText(
                  txt: 'Company@domain.com',
                  size: 15,
                  color: AppConst.primary,
                ),
                Spacer(),
                Icon(
                  FontAwesomeIcons.locationDot,
                  color: AppConst.primary,
                ),
                SizedBox(
                  width: 10,
                ),
                AppText(
                  txt: 'Jl. Raya Puputan \n No 142, TZ - 80234',
                  size: 15,
                  color: AppConst.primary,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/logo.png',
                  width: 200,
                ),
              ),
              Spacer(),
              Icon(
                Icons.menu,
                size: 50,
                color: AppConst.primary,
              ),
            ],
          ),
        )
      ],
    );
  }
}

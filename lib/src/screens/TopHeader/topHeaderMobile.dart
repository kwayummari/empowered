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
            padding: const EdgeInsets.only(left: 10, right: 10),
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 100,
                  ),
                ),
                Spacer(),
                AppText(
                  txt: 'Home',
                  size: 18,
                  color: AppConst.secondary,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  width: 30,
                ),
                AppText(
                  txt: 'About us',
                  size: 18,
                  color: AppConst.secondary,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  width: 30,
                ),
                AppText(
                  txt: 'Events',
                  size: 18,
                  color: AppConst.secondary,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  width: 30,
                ),
                AppText(
                  txt: 'Blog',
                  size: 18,
                  color: AppConst.secondary,
                  weight: FontWeight.bold,
                ),
                SizedBox(
                  width: 30,
                ),
                AppText(
                  txt: 'Contact',
                  size: 18,
                  color: AppConst.secondary,
                  weight: FontWeight.bold,
                ),
                Spacer(),
                CircleAvatar(
                    backgroundColor: AppConst.primary,
                    child: Icon(
                      FontAwesomeIcons.phone,
                      color: AppConst.white,
                    )),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 20),
                  child: Container(
                    child: Column(
                      children: [
                        AppText(
                          align: TextAlign.left,
                          txt: 'Make A Call Anytime',
                          size: 15,
                          weight: FontWeight.bold,
                          color: AppConst.grey,
                        ),
                        AppText(
                          align: TextAlign.left,
                          txt: '+255-762-996-305',
                          size: 15,
                          weight: FontWeight.bold,
                          color: AppConst.primary,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

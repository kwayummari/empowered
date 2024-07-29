import 'package:empowered/src/utils/app_const.dart';
import 'package:empowered/src/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopHeaderMobile extends StatefulWidget {
  const TopHeaderMobile({super.key});

  @override
  State<TopHeaderMobile> createState() => _TopHeaderMobileState();
}

class _TopHeaderMobileState extends State<TopHeaderMobile>
    with SingleTickerProviderStateMixin {
  bool _isDrawerOpen = false;
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleDrawer() {
    setState(() {
      if (_isDrawerOpen) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
      _isDrawerOpen = !_isDrawerOpen;
    });
  }

  void _closeDrawer() {
    setState(() {
      _controller.reverse();
      _isDrawerOpen = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
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
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: _toggleDrawer,
                      child: Icon(
                        Icons.menu,
                        size: 50,
                        color: AppConst.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        if (_isDrawerOpen)
          GestureDetector(
            onTap: _closeDrawer,
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Stack(
                children: [
                  SlideTransition(
                    position: _offsetAnimation,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 250,
                        height: MediaQuery.of(context).size.height,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: AppText(
                                  txt: 'Home',
                                  size: 18,
                                  color: AppConst.secondary,
                                  weight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: AppText(
                                  txt: 'About us',
                                  size: 18,
                                  color: AppConst.secondary,
                                  weight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: AppText(
                                  txt: 'Events',
                                  size: 18,
                                  color: AppConst.secondary,
                                  weight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: AppText(
                                  txt: 'Blog',
                                  size: 18,
                                  color: AppConst.secondary,
                                  weight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                title: AppText(
                                  txt: 'Contact',
                                  size: 18,
                                  color: AppConst.secondary,
                                  weight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

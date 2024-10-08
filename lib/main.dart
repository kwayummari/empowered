// ignore_for_file: prefer_const_constructors
import 'package:empowered/src/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:empowered/src/functions/createMaterialColor.dart';
import 'package:empowered/src/utils/app_const.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'package:empowered/src/provider/providers.dart'; // Import the new providers file

Future main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => MultiProvider(
      providers: MyProviderList.providers,
      child: MaterialApp.router(
        routerConfig: router,
        builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          breakpoints: const [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(800, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
            ResponsiveBreakpoint.autoScale(2460, name: '4K'),
          ],
        ),
        debugShowCheckedModeBanner: false,
        title: 'EMPOWERED FOR CHANGE',
        theme: ThemeData(
            cardColor: AppConst.primary,
            highlightColor: AppConst.primary,
            splashColor: AppConst.primary,
            primaryColor: AppConst.primary,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: createMaterialColor(AppConst.primary),
            ).copyWith(surface: AppConst.primary)),
      ));
}

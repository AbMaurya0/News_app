import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:news_app/screens/splash_screen.dart';
import 'package:news_app/themes/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News',
        theme: Apptheme
            .lighttheme /*ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorConstant.blue0A),
          useMaterial3: true,
        ),*/
        ,
        darkTheme: Apptheme.darktheme,
        themeMode: ThemeMode.light,
        home: SplashScreen());
  }
}

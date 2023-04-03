import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:megamind/AppModule/LoginAndRegistration/ViewController/splash_view_controller.dart';
import 'package:megamind/AppModule/Utlis/Constant/colors_custom.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: CustomColor.backcolor,

    statusBarIconBrightness: Brightness.dark,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Megamind',
      theme: ThemeData(primaryColor: Colors.grey, fontFamily: 'Poppins'),
      home: SplashScreen(),
    );
  }
}

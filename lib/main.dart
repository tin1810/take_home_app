import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:take_home_app/app/routes/app_pages.dart';
import 'package:take_home_app/app/routes/app_routes.dart';
import 'package:take_home_app/app/view/splash/binding/splash_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return GetMaterialApp(
      title: 'Take Home',
      getPages: AppPages.routes,
      initialBinding: SplashBinding(),
      initialRoute: Routes.INITIAL,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}


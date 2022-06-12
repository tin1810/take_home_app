import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:take_home_app/app/view/splash/controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final splashcontroller = Get.put(SplashController());
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            SvgPicture.asset(
                "assets/images/undraw_business_decisions_re_84ag.svg")
          ],
        ),
      )),
    );
  }
}

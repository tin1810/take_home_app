import 'package:get/get.dart';
import 'package:take_home_app/app/view/booking/screen/booking_screen.dart';
import 'package:take_home_app/app/view/home/screen/home_screen.dart';
import 'package:take_home_app/app/view/login/screen/login_screen.dart';
import 'package:take_home_app/app/view/splash/screen/splash_screen.dart';

import 'app_pages.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => const SplashScreen()),
    GetPage(name: Routes.HOME, page: () => HomeScreen()),
    GetPage(name: Routes.LOGIN, page: () => LoginScreen()),
    GetPage(name: Routes.BOOKING, page: () => BookingScreen()),
  ];
}

import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  // void onReady() {
  //   super.onReady();
  //   moveToNext();
  // }

  // Future<void> moveToNext() async {
  //   await Future.delayed(Duration(milliseconds: 2000), () {});
  //   Get.offAll(LoginScreen());
  // }
  // void initState() {
  //   super.initState();
  //   Future.delayed(Duration(seconds: 2)).then((_) {
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(
  //       builder: (context) => OnboardingScreen(),
  //     ));
  //   });
  // }
  // void onInit() {
  //   Future.delayed(Duration(seconds: 5), () {
  //     Get.offAll(LoginScreen());
  //   });
  //   super.onInit();
  // }
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 4)).then((_) {
      Get.offAllNamed("/login");
    });
  }
}

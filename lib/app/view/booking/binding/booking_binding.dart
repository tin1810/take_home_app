import 'package:get/get.dart';
import 'package:take_home_app/app/view/booking/controller/booking_controller.dart';

class BookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookingController());
  }
}

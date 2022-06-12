import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:take_home_app/app/api/api_repo.dart';
import 'package:take_home_app/app/model/booking_model.dart';
import 'package:take_home_app/app/service/service.dart';

class BookingController extends GetxController {
  List<BookingModel> bookingList = <BookingModel>[].obs;
  var selectedDate = DateTime.now().obs;
  Rx<bool> isLoading = true.obs;
  Rx<bool> isSelected = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    // getTime();
    getTime();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

//   void fetchBooking() async {
//     try {
//       isLoading(true);
//       var booking = await Service.fetchBookingList;
//       if (booking != null) {
//         bookingList.value = booking as List<BookingModel>;
//       }
//     } finally {
//       isLoading(false);
//     }
//   }
// }

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime(2000),
      lastDate: DateTime(2024),
      helpText: 'Select Interview Date',
      cancelText: 'Close',
      confirmText: 'Confirm',
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter valid date range',
      fieldLabelText: 'Select Interview Date',
      fieldHintText: 'Month/Date/Year',
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
    }
  }

  void getTime() async {
    ApiRepository.instance.getBooking().then((value) {
      isLoading.value = false;
      bookingList = value as List<BookingModel>;
      // candidateListLength.value = value.length;
    }).catchError((e) {
      isLoading.value = false;
    });
  }
}

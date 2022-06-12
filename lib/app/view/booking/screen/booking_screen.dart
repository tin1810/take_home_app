import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:take_home_app/app/view/booking/controller/booking_controller.dart';

class BookingScreen extends StatelessWidget {
  final bookingController = Get.put(BookingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.lightBlue,
        title: Text("Book an apointment"),
        centerTitle: true,
      ),
      body: Obx(() {
        if (bookingController.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 50),
                child: Text(
                  "Date",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              InkWell(
                onTap: () {
                  bookingController.chooseDate();
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 40, right: 40, top: 80),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.lightBlue.shade200),
                  child: Obx(
                    () => Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        DateFormat("dd-MM-yyyy")
                            .format(bookingController.selectedDate.value)
                            .toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: Colors.black54),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 150),
                child: Text(
                  "Available Time",
                  style: TextStyle(fontSize: 16),
                ),
              ),

              bookingController.isSelected.value
                  ? firsttime()
                  : firsttimeSelected(),
              secondtime(),
              // Align(
              //   alignment: Alignment.topCenter,
              //   child: Padding(
              //     padding: const EdgeInsets.only(top: 300),
              //     child: Container(
              //       margin: EdgeInsets.only(left: 30, right: 30),
              //       child: GridView.builder(
              //         itemCount: bookingController.bookingList.length,
              //         itemBuilder: (context, index) {
              //           return Container(
              //             alignment: Alignment.center,
              //             margin: EdgeInsets.only(right: 10),
              //             decoration: BoxDecoration(
              //               color: Colors.amber,
              //             ),
              //             child: Padding(
              //               padding: EdgeInsets.only(bottom: 10),
              //               child: Row(
              //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                 children: [
              //                   Text(bookingController
              //                       .bookingList[index].slots[index].startTime),
              //                   Text(":"),
              //                   Text(bookingController
              //                       .bookingList[index].slots[index].endTime),
              //                 ],
              //               ),
              //             ),
              //           );
              //         },
              //         gridDelegate:
              //             const SliverGridDelegateWithMaxCrossAxisExtent(
              //                 maxCrossAxisExtent: 200,
              //                 childAspectRatio: 7 / 2,
              //                 crossAxisSpacing: 10,
              //                 mainAxisSpacing: 10),
              //       ),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 500),
                child: Center(
                  child: TextButton(
                    onPressed: (() {
                      Get.back();
                    }),
                    child: Text(
                      "Confirm",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      }),
    );
  }

  Align secondtime() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 280),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "10:15 ",
                    textAlign: TextAlign.center,
                  ),
                  Text("10:30")
                ],
              ),
            ),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "10:30 ",
                    textAlign: TextAlign.center,
                  ),
                  Text("10:45")
                ],
              ),
            ),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "10:45 ",
                    textAlign: TextAlign.center,
                  ),
                  Text("11:00")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Align firsttime() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "09:15 ",
                    textAlign: TextAlign.center,
                  ),
                  Text("09:30")
                ],
              ),
            ),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "09:30 ",
                    textAlign: TextAlign.center,
                  ),
                  Text("09:45")
                ],
              ),
            ),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "09:45 ",
                    textAlign: TextAlign.center,
                  ),
                  Text("10:00")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Align firsttimeSelected() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 200),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "09:15 ",
                    textAlign: TextAlign.center,
                  ),
                  Text("09:30")
                ],
              ),
            ),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "09:30 ",
                    textAlign: TextAlign.center,
                  ),
                  Text("09:45")
                ],
              ),
            ),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black45),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "09:45 ",
                    textAlign: TextAlign.center,
                  ),
                  Text("10:00")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

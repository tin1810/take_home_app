// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:take_home_app/app/model/data_model.dart';
import 'package:take_home_app/app/view/home/controller/home_controller.dart';
import 'package:take_home_app/app/view/login/controller/login_controller.dart';

class HomeScreen extends StatelessWidget {
  final homeController = Get.put(HomeController());
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    late DataModel dataList;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.calendar_month),
          onPressed: () {
            Get.toNamed("/booking");
          }),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            CircleAvatar(
              backgroundImage:
                  Image.network(controller.googleAccount.value?.photoUrl ?? '')
                      .image,
              radius: 50,
            ),
            SizedBox(
              height: 15,
            ),
            Text(controller.googleAccount.value?.displayName ?? ''),
            Text(controller.googleAccount.value?.email ?? ''),
            Divider(
              height: 100,
              color: Colors.grey,
            ),
            ActionChip(
                label: Text("Log Out"),
                onPressed: () {
                  controller.logout();
                }),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: Colors.black,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          elevation: 0,
        ),
      ),
      body: Obx(() {
        if (homeController.isLoading.value == false) {
          return Center(child: CircularProgressIndicator());
        } else {
          return SafeArea(
              child: Stack(
            children: [
              Container(
                height: 600,
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          first(),
                          SizedBox(
                            width: 10,
                          ),
                          second(),
                          SizedBox(
                            width: 10,
                          ),
                          third(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ));
        }
      }),
    );
  }

  Container third() {
    return Container(
      height: 400,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.lightBlue.shade100),
      child: Column(
        children: [
          Container(
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              border: Border.all(color: Colors.black45),
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/Prior-Years-Canadian-Maple-Leaf-1oz-Silver-Coin-Front-1-768x768.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("ounce :"),
                  Text(" 30.209"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("gram :"),
                  Text(" 0.9712"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("hundred_gram :"),
                  Text(" 97.1219"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("thousand_gram :"),
                  Text("971.2405"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container second() {
    return Container(
      height: 400,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.lightBlue.shade100),
      child: Column(
        children: [
          Container(
            height: 280,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                border: Border.all(color: Colors.black45),
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/Credit-Suisse-Platinum-Bar-10oz.jpg"),
                    fit: BoxFit.cover),
                color: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("ounce :"),
                  Text("2596.005"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("gram :"),
                  Text("43.1362"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("hundred_gram :"),
                  Text(" 4313.5237"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("thousand_gram :"),
                  Text("43136.1762"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container first() {
    return Container(
      height: 400,
      width: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.lightBlue.shade100),
      child: Column(children: [
        Container(
          height: 280,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            border: Border.all(color: Colors.black45),
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/Argor-Heraeus-Gold-Bar-1kg-Front-A-768x769.jpg"),
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("ounce :"),
                Text("2596.005"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("gram :"),
                Text("83.4634"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("hundred_gram :"),
                Text("8346.1561"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("thousand_gram :"),
                Text("83456.3687"),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}

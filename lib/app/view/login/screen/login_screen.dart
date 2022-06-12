import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:take_home_app/app/view/home/screen/home_screen.dart';
import 'package:take_home_app/app/view/login/controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade100,
      body: SafeArea(
        child: Center(child: Obx(() {
          if (controller.googleAccount.value == null)
            return button();
          else
            return HomeScreen();
        })),
      ),
    );
  }

  Column button() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              border: Border.all(color: Colors.black45)),
          child: TextButton(
            onPressed: () {
              controller.login();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/images/google-icon-svgrepo-com.svg",
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Sign In With Google"),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Column buildProfileView() {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage:
              Image.network(controller.googleAccount.value?.photoUrl ?? '')
                  .image,
          radius: 100,
        ),
        Text(controller.googleAccount.value?.displayName ?? ''),
        Text(controller.googleAccount.value?.email ?? ''),
      ],
    );
  }
}

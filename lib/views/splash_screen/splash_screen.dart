import 'package:emart_app/views/auth_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/appLogo_widget.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //Creating a method to change Screen
  changeScreen(){
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(
        const LoginScreen()
      );
    });

    // Get.to(const LoginScreen());
  }

  @override
  void initState() {
    // TODO: implement initState

    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  icSplashBg,
                  width: 300,
                ),
            ),
            20.heightBox,
            appLogoWidget(),
            appname.text.fontFamily(bold).size(22).white.make(),
            5.heightBox,
            const Text(appversion),
            const Spacer(),
            credits.text.make(),
            30.heightBox
          ],
        ),
      ),
    );
  }
}

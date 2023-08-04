import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/appLogo_widget.dart';
import 'package:emart_app/widgets_common/custom_textField.dart';
import 'package:flutter/material.dart';

import '../../widgets_common/bg_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            const Text('Log in to $appname')
                .text
                .fontFamily(bold)
                .white
                .size(18)
                .make(),
            20.heightBox,
            Column(
              children: [
                customTextField(hint: 'Please write Email', title: 'Email'),
                10.heightBox,
                customTextField(hint:'*****', title: 'Password')
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .make(),
          ],
        ),
      ),
    ));
  }
}

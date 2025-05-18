import 'package:dccccc/modules/logo screeen/splashs_screen2.dart';
import 'package:dccccc/shared/components/components.dart';
import 'package:dccccc/shared/style/color.dart';

import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 3),
            () {
              navigateAndFinish(context,  SplashScreen2());

        }
    );
    return Scaffold(
    backgroundColor: PC,
      body: Center(child: Image.asset("assets/images/LOG1.png")),
    );
  }
}

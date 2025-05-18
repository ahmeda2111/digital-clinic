import 'package:dccccc/modules/on_boarding/on_boarding_screen.dart';
import 'package:dccccc/shared/components/components.dart';
import 'package:dccccc/shared/style/color.dart';

import 'package:flutter/material.dart';
class SplashScreen2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(seconds: 3),
            () {
          navigateAndFinish(context, const OnBoardingScreen());
        }
    );
    return Scaffold(
      backgroundColor: IC,
      body: Center(child: Image.asset("assets/images/LOG2.png")),
    );
  }
}
import 'package:dccccc/modules/new_pass/new_pass.dart';
import 'package:flutter/material.dart';
import 'package:dccccc/modules/logo screeen/splash_screen.dart';
import 'package:dccccc/modules/logo screeen/splashs_screen2.dart';
import 'package:dccccc/modules/home page/homepage.dart';
import 'package:dccccc/modules/booking/booking.dart';
import 'package:dccccc/modules/appointment/appointment_screen.dart';
import 'package:dccccc/modules/payment-screen/paymentscreen.dart';

import 'model/global_model.dart';
import 'modules/appointment_details/appointment_details.dart';
import 'modules/edit_profile/edit_profile.dart';
import 'modules/enter_code/enter_code.dart';
import 'modules/give_feedback/give_feedback.dart';
import 'modules/grid.dart';
import 'modules/pills/pills.dart';
import 'modules/profile/profile.dart';
import 'modules/profile_settings/profile_settings.dart';
import 'modules/reset_pass/reset_pass.dart';
import 'modules/sign_in/sign_in.dart';
import 'modules/sign_up/sign_up.dart';
import 'modules/support/support.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => GlobalSt(),
          ),
        ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/Homepage" ,
        routes: {
          "/" : (context) =>  SplashScreen(),
          "/2" : (context) =>  SplashScreen2(),
          "/Homepage" : (context) => Homepage(),
          "/Detailscreen" : (context) => Detailscreen(),
          "/Appoint" : (context) => Appoint(),
          "/Paymentscreen" : (context) => Paymentscreen(),
          "/test----" : (context) =>  Tt(),
          "/SignUp" : (context) =>  const SignUp(),
          "/SignIn" : (context) =>  const SignIn(),
          "/NewPass" : (context) =>  const NewPass(),
          "/ResetPass" : (context) =>  const ResetPass(),
          "/EnterCode" : (context) =>  const EnterCode(),
          "/GiveFeedback" : (context) =>  const GiveFeedback(),
          "/Support" : (context) =>  const Support(),
          "/EditProfile" : (context) =>  const EditProfile(),
          "/Profile" : (context) =>  const Profile(),
          "/ProfileSett" : (context) =>  const ProfileSett(),
          "/Pills" : (context) =>  const Pills(),
          "/Appointment" : (context) =>  const Appointment(),

        },
      )

    );
  }
}

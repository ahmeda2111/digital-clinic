import 'package:flutter/material.dart';
import 'package:dccccc/shared/style/color.dart';

import '../../shared/style/widgets.dart';

// var color1 = "#6F7ED7"
class ResetPass extends StatefulWidget {
  const ResetPass({Key? key}) : super(key: key);
  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: PC,
            toolbarHeight:75,
            centerTitle: true,
            elevation: 0,
          ),
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Container(
                    color: BC,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
                Container(
                  color: PC,
                  width: double.infinity,
                  height: 250,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  height: double.infinity,
                  color: IC,
                  child: Column(
                    children: [
                      const Expanded(
                          flex: 2,
                          child: Center(
                            child: Text("Reset Password",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 32,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Column(
                            children: const [
                              Text("Please enter your email address.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text("A code will be sent to your email.",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 0,
                          padding: const EdgeInsets.fromLTRB(10,2,10,2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: PC, width: 2),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                // labelText: "First Name",
                                labelStyle: TextStyle(color: PC),
                                hintText:"Email",
                                hintStyle: TextStyle(color: PC)
                            ),
                            // controller: controller,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        flex: 1,
                        child: MaterialButton(
                          onPressed: (){},
                          // padding: EdgeInsets.fromLTRB(5, 0, 20, 0),
                          child: const Text("I didn't receive code",
                            style: TextStyle(
                              color: PC,
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

                      const Expanded(
                        flex: 5,
                        child: Text(""),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // minimumSize: Size.zero,
                          elevation: 3,
                          padding: EdgeInsets.zero,
                          primary: PC,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        ),
                        child: const SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: Center(child: Text("CONTINUE"))
                        ),
                        onPressed: () {
                          // Navigator.pushNamed(context, "/init_screen_four");
                        },
                      ),
                      const SizedBox(height: 50,),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}




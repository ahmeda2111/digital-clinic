import 'package:dccccc/shared/style/color.dart';
import 'package:flutter/material.dart';
import '../../shared/style/color.dart';
import '../../shared/style/widgets.dart';

// var color1 = "#6F7ED7"
class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: PC,
            toolbarHeight:75,
            // centerTitle: true,
            elevation: 0,
            leading: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                    size: 28,
                  ), onPressed: () {  },
                ),
              ],
            ),
            title: const Text("Edit Profile",
              style: TextStyle(
                color: IC
              )
            ),
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
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/epic-sunrise-photos-fog.jpg"),
                          radius: 45,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // minimumSize: Size.zero,
                            elevation: 3,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          ),
                          child: Container(
                              width: double.infinity,
                              // height: double.infinity,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: IC,
                                boxShadow: const [
                                  BoxShadow(
                                      color: PC,
                                      spreadRadius: 1
                                  ),
                                ],
                              ),
                              child: const Center(child: Text(
                                "CHANGE PHOTO",
                                style: TextStyle(
                                    color: PC
                                ),
                              ))
                          ),
                          onPressed: () {
                            // Navigator.pushNamed(context, "/init_screen_four");
                          },
                        ),
                      ),

                      const Divider(),


                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              child: const Text('NAME',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10,0,10,2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: PC, width: 2),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    // labelText: "First Name",
                                    labelStyle: TextStyle(color: PC),
                                    hintText:"Name",
                                    hintStyle: TextStyle(color: PC)
                                ),
                                // controller: controller,
                              ),
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              child: const Text('EMAIL',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10,0,10,2),
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
                          ],
                        ),

                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: double.infinity,
                              child: const Text('PASSWORD',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10,0,10,2),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: PC, width: 2),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    // labelText: "First Name",
                                    labelStyle: TextStyle(color: PC),
                                    hintText:"Password",
                                    hintStyle: TextStyle(color: PC)
                                ),
                                // controller: controller,
                              ),
                            ),
                          ],
                        ),

                      ),
                      const SizedBox(height: 10),

                      // const Expanded(
                      //   flex: 1,
                      //   child: Text(""),
                      // ),

                      Container(
                        margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            // minimumSize: Size.zero,
                            elevation: 3,
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          ),
                          child: Container(
                              width: double.infinity,
                              // height: double.infinity,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: IC,
                                boxShadow: const [
                                  BoxShadow(
                                      color: PC,
                                      spreadRadius: 1
                                  ),
                                ],
                              ),
                              child: const Center(child: Text(
                                  "CHANGE PASSWORD",
                                style: TextStyle(
                                  color: PC
                                ),
                              ))
                          ),
                          onPressed: () {
                            // Navigator.pushNamed(context, "/init_screen_four");
                          },
                        ),
                      ),
                      const SizedBox(height: 30,),
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
                            child: Center(child: Text("SAVE"))
                        ),
                        onPressed: () {
                          // Navigator.pushNamed(context, "/init_screen_four");
                        },
                      ),
                      const SizedBox(height: 30,),
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

import 'package:flutter/material.dart';
import 'package:dccccc/shared/style/color.dart';

import '../../shared/style/widgets.dart';

// var color1 = "#6F7ED7"
class ProfileSett extends StatefulWidget {
  const ProfileSett({Key? key}) : super(key: key);
  @override
  State<ProfileSett> createState() => _ProfileSettState();
}

class _ProfileSettState extends State<ProfileSett> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
            title: const Text("Profile Settings",
              style: TextStyle(
                color: Colors.white
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
                    color: Colors.grey[200],
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
                        flex: 4,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/epic-sunrise-photos-fog.jpg"),
                          radius: 45,
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Text('Mohamed Ibrahim Joduh',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Text('Joduh@gmail.com',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),



                      Expanded(
                          flex: 2,
                          child: MaterialButton(
                            child: SizedBox(
                                width: double.infinity,
                                // color: Colors.green,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                        leading: IconButton(
                                          icon: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Icon(
                                                Icons.edit,
                                                color: Colors.indigoAccent,
                                                size: 28,
                                              ),
                                            ],
                                          ), onPressed: () {  },
                                        ),
                                        title:  const Text("Account Settings",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            onPressed: () {},
                          )
                      ),
                      const Divider(),

                      Expanded(
                          flex: 2,
                          child: MaterialButton(
                            child: SizedBox(
                                width: double.infinity,
                                // color: Colors.green,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                        leading: IconButton(
                                          icon: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Icon(
                                                Icons.notifications_none_sharp,
                                                color: Colors.indigoAccent,
                                                size: 28,
                                              ),
                                            ],
                                          ), onPressed: () {  },
                                        ),
                                        title:  const Text("Notifications",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            onPressed: () {},
                          )
                      ),
                      const Divider(),

                      Expanded(
                          flex: 2,
                          child: MaterialButton(
                            child: SizedBox(
                                width: double.infinity,
                                // color: Colors.green,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                        leading: IconButton(
                                          icon: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Icon(
                                                Icons.question_mark,
                                                color: Colors.indigoAccent,
                                                size: 28,
                                              ),
                                            ],
                                          ), onPressed: () {  },
                                        ),
                                        title:  const Text("Support",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            onPressed: () {},
                          )
                      ),
                      const Divider(),

                      Expanded(
                          flex: 2,
                          child: MaterialButton(
                            child: SizedBox(
                                width: double.infinity,
                                // color: Colors.green,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                        leading: IconButton(
                                          icon: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Icon(
                                                Icons.privacy_tip_outlined,
                                                color: Colors.indigoAccent,
                                                size: 28,
                                              ),
                                            ],
                                          ), onPressed: () {  },
                                        ),
                                        title:  const Text("Privacy Policy",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            onPressed: () {},
                          )
                      ),
                      const Divider(),

                      Expanded(
                          flex: 2,
                          child: MaterialButton(
                            child: SizedBox(
                                width: double.infinity,
                                // color: Colors.green,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                        leading: IconButton(
                                          icon: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: const [
                                              Icon(
                                                Icons.logout,
                                                color: Colors.indigoAccent,
                                                size: 28,
                                              ),
                                            ],
                                          ), onPressed: () {  },
                                        ),
                                        title:  const Text("Log Out",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            onPressed: () {},
                          )
                      ),
                      const Divider(),


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

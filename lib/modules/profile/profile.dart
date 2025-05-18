import 'package:flutter/material.dart';
import 'package:dccccc/shared/style/color.dart';

import 'package:dccccc/shared/style/font.dart';


import '../../shared/style/widgets.dart';

// var color1 = "#6F7ED7"
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  State<Profile> createState() => _ProfileState();

}

class _TextThemeDemoState {
  _TextThemeDemoState createState() => _TextThemeDemoState();
}



class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: PC,
            toolbarHeight:75,
            elevation: 0,
            title: const Text("Profile",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
                //TextStyle(color: Colors.white)
            ),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.notifications_none_sharp,
                      color: Colors.white,
                      size: 28,
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.settings_sharp,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],

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
                      Expanded(
                        flex: 1,
                        child: ListTile(
                          contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                          title: const Text('Mohamed Ibrahim Jodah',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: const Text('20 yrs old',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          leading: const CircleAvatar(
                            backgroundColor: PC,
                            // backgroundImage: AssetImage("assets/epic-sunrise-photos-fog.jpg"),
                            radius: 20,
                          ),
                        ),
                      ),
                      const Divider(),
                      Expanded(
                        flex: 2,
                        child: Row(children: [
                          Expanded(
                            child: Column(
                              children: const [
                                Expanded(
                                  flex: 2,
                                  child: CircleAvatar(
                                    backgroundColor: PC,
                                    // backgroundImage: AssetImage("assets/epic-sunrise-photos-fog.jpg"),
                                    radius: 20,
                                    child: Center(
                                      child: Icon(
                                          Icons.person_outline_sharp,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Saved',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text('Doctors',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: const [
                                Expanded(
                                  flex: 2,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    // backgroundImage: AssetImage("assets/epic-sunrise-photos-fog.jpg"),
                                    radius: 20,
                                    child: Center(
                                      child: Icon(
                                        Icons.file_open_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Saved',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text('Articles',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: const [
                                Expanded(
                                  flex: 2,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.green,
                                    // backgroundImage: AssetImage("assets/epic-sunrise-photos-fog.jpg"),
                                    radius: 20,
                                    child: Center(
                                      child: Icon(
                                        Icons.monitor_heart_outlined,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Health',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text('Diary',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])
                      ),
                      const Divider(),



                      Container(
                        width: double.infinity,
                        // height: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: IC,
                          boxShadow: [
                            BoxShadow(
                                color: PC,
                                spreadRadius: 1
                            ),
                          ],
                        ),

                        child: Column(
                          children: [
                            ListTile(
                              contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                              title: const Text("30%",
                                style: TextStyle(
                                  color: PC,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              subtitle: const Text("Refer a friend and get discount!",
                                style: TextStyle(
                                  color: PC,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              trailing: CircleAvatar(
                                backgroundColor: PC,
                                // backgroundImage: AssetImage("assets/epic-sunrise-photos-fog.jpg"),
                                radius: 20,
                                child: Center(
                                  child: Icon(
                                    Icons.percent,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                            ),
                          ],
                        ),
                      ),



                      Expanded(
                          flex: 1,
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
                                                Icons.calendar_today_outlined,
                                                color: Colors.indigoAccent,
                                                size: 28,
                                              ),
                                            ],
                                          ), onPressed: () {  },
                                        ),
                                        title:  const Text("Appointments",
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
                          flex: 1,
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
                                                Icons.notifications_none,
                                                color: Colors.indigoAccent,
                                                size: 28,
                                              ),
                                            ],
                                          ), onPressed: () {  },
                                        ),
                                        title:  const Text("Pills Reminder",
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
                          flex: 1,
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
                          flex: 1,
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
                                                Icons.file_open_outlined,
                                                color: Colors.indigoAccent,
                                                size: 28,
                                              ),
                                            ],
                                          ), onPressed: () {  },
                                        ),
                                        title:  const Text("EHR Files",
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

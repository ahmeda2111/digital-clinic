import 'package:dccccc/shared/style/color.dart';
import 'package:flutter/material.dart';

import '../../shared/style/widgets.dart';

// var color1 = "#6F7ED7"
class Appointment extends StatefulWidget {
  const Appointment({Key? key}) : super(key: key);
  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: PC,
            toolbarHeight: 75,
            centerTitle: true,
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
            title: const Text("Appointment Details",
              style: TextStyle(
                color: Colors.white
              )
            ),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.max,
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
                          flex: 2,
                          child: ListTile(
                            contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                            title: const Text('Ahmed Ibrahim Jodah',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: const Text('Obstetrician',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            leading: const CircleAvatar(
                              backgroundImage: AssetImage("assets/epic-sunrise-photos-fog.jpg"),
                              radius: 20,
                            ),
                          ),
                      ),
                      Expanded(
                          flex: 2,
                          child: SizedBox(
                              width: double.infinity,
                              child: Column(
                                children: [
                                  ListTile(
                                    contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                    title: const Text("Doctor's Profile",
                                      style: TextStyle(
                                        color: PC,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      icon: const Icon(
                                        Icons.chat_outlined,
                                        color: Colors.indigoAccent,
                                        size: 28,
                                      ), onPressed: () {  },
                                    ),

                                  ),
                                  const Divider(),
                                ],
                              ),
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                              width: double.infinity,
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
                                              Icons.access_time,
                                              color: Colors.indigoAccent,
                                              size: 15,
                                            ),
                                          ],
                                        ), onPressed: () {  },
                                      ),
                                      title: const Text("15 Min",
                                        style: TextStyle(
                                          color: PC,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                      leading: IconButton(
                                        icon: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: const [
                                            Icon(
                                              Icons.calendar_month_outlined,
                                              color: Colors.indigoAccent,
                                              size: 15,
                                            ),
                                          ],
                                        ), onPressed: () {  },
                                      ),
                                      title: const Text("Mon, 12 May",
                                        style: TextStyle(
                                          color: PC,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          )
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                              width: double.infinity,
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
                                              Icons.access_time,
                                              color: Colors.indigoAccent,
                                              size: 15,
                                            ),
                                          ],
                                        ), onPressed: () {  },
                                      ),
                                      title: const Text("Mon, 12 May",
                                        style: TextStyle(
                                          color: Colors.indigo,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Text(""),
                                  ),
                                ],
                              )
                          )
                      ),
                      const Divider(),


                      Expanded(
                          flex: 2,
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                  title: const Text("Details",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),

                      Expanded(
                          flex: 2,
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
                                              Icons.payments_outlined,
                                              color: Colors.indigoAccent,
                                              size: 28,
                                            ),
                                          ],
                                        ), onPressed: () {  },
                                      ),
                                      title:  const Text("50 Pound",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      subtitle:  const Text("Paid",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: Text(""),
                                  ),
                                ],
                              )
                          )
                      ),
                      const Divider(),

                      Expanded(
                          flex: 2,
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
                                              Icons.coffee_outlined,
                                              color: Colors.indigoAccent,
                                              size: 28,
                                            ),
                                          ],
                                        ), onPressed: () {  },
                                      ),
                                      title:  const Text("Vitamin C",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      subtitle:  const Text("Every day",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: Text(""),
                                  ),
                                ],
                              )
                          )
                      ),
                      const Divider(),

                      Expanded(
                          flex: 2,
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
                                      title:  const Text("Rediscover",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      subtitle:  const Text("Mon, 19 MAy",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: Text(""),
                                  ),
                                ],
                              )
                          )
                      ),
                      const Divider(),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // minimumSize: Size.zero,
                          elevation: 3,
                          padding: EdgeInsets.zero,
                          primary: Colors.indigo,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                        ),
                        child: SizedBox(
                            width: double.infinity,
                            child: Center(child: Text("BOOK NEXT VISIT"))
                        ),
                        onPressed: () {
                          // Navigator.pushNamed(context, "/init_screen_four");
                        },
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // minimumSize: Size.zero,
                          elevation: 3,
                          padding: EdgeInsets.zero,
                          primary: Colors.indigoAccent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                        ),
                        child: SizedBox(
                            width: double.infinity,
                            child: Center(child: Text("ALL CONSULTATIONS"))
                        ),
                        onPressed: () {
                          // Navigator.pushNamed(context, "/init_screen_four");
                        },
                      ),

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

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:dccccc/shared/style/color.dart';

// import '../shared/style/widgets.dart';

// var color1 = "#6F7ED7"
class Support extends StatefulWidget {
  const Support({Key? key}) : super(key: key);
  @override
  State<Support> createState() => _SupportState();
}



class _SupportState extends State<Support> {
  final List cards =[
    {
      "time": "09:00AM",
      "pill": "Vitamin C",
      "desc": "1 pill, before meal",
    },
    {
      "time": "12:00AM",
      "pill": "Vitamin B",
      "desc": "2 pill, after meal",
    },
    {
      "time": "08:00AM",
      "pill": "Vitamin A",
      "desc": "1 pill, after meal",
    },
    {
      "time": "09:00AM",
      "pill": "Pills Dairty",
      "desc": "3 pill, before meal",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: PC,
            toolbarHeight:100,
            // centerTitle: true,
            elevation: 0,
            leading: Container(
              width: 200,
              margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Row(
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
            ),
            title: const Text("Support",
                style: TextStyle(
                    color: IC
                )
            ),
          ),
          body: Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            height: double.infinity,
            color: IC,
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: MaterialButton(
                      child: SizedBox(
                          width: double.infinity,
                          // color: Colors.green,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                  trailing: IconButton(
                                    icon: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children:  const [
                                        Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: Colors.indigoAccent,
                                          size: 28,
                                        ),
                                      ],
                                    ), onPressed: () {  },
                                  ),
                                  title:  const Text("How to delete account?",
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
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                  trailing: IconButton(
                                    icon: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children:  const [
                                        Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: Colors.indigoAccent,
                                          size: 28,
                                        ),
                                      ],
                                    ), onPressed: () {  },
                                  ),
                                  title:  const Text("How do i delete  past visits?",
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
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                  trailing: IconButton(
                                    icon: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children:  const [
                                        Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: Colors.indigoAccent,
                                          size: 28,
                                        ),
                                      ],
                                    ), onPressed: () {  },
                                  ),
                                  title:  const Text("I don't need notifications",
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
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: ListTile(
                                  contentPadding: EdgeInsetsGeometry.lerp(EdgeInsets.zero, EdgeInsets.zero, 0),
                                  trailing: IconButton(
                                    icon: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children:  const [
                                        Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                          color: Colors.indigoAccent,
                                          size: 28,
                                        ),
                                      ],
                                    ), onPressed: () {  },
                                  ),
                                  title:  const Text("How to download upur data?",
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
                  child: Text(""),
                  flex: 9,
                )




              ],
            ),
          ),

      ),
    );
  }
}

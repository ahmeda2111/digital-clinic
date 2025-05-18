import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:dccccc/shared/style/color.dart';


// import '../shared/style/widgets.dart';

// var color1 = "#6F7ED7"
class Pills extends StatefulWidget {
  const Pills({Key? key}) : super(key: key);
  @override
  State<Pills> createState() => _PillsState();
}



class _PillsState extends State<Pills> {
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
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  color: PC,
                  padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                  child: Column(
                    children: [
                      const Expanded(child: Text("")),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: const Text(
                          "Pills",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 28,
                            textDirection: TextDirection.rtl,
                          ),
                          onPressed: () {},
                        )
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: SfCalendar(
                    view: CalendarView.week
                  )
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          child: GridView.count(
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: 1.2,
                            shrinkWrap: true,
                            children: cards.map((card) {
                              return InkWell(
                                onTap: (){
                                  // Navigator.pushNamed(context, "/teacher_home");
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(1),
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
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                              // "09:00AM",
                                              card["time"],
                                              style: const TextStyle(
                                                color: Colors.indigo,
                                                fontWeight: FontWeight.w500
                                              )
                                          ),
                                          Icon(
                                            Icons.check_circle_outline,
                                            color: Colors.indigo,
                                            size: 16,
                                            textDirection: TextDirection.rtl,
                                          ),
                                        ],
                                      ),

                                      const Expanded(child: Text("")),

                                      SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                            card["pill"],
                                            style: const TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500
                                            )
                                        ),
                                      ),

                                      SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                            card["desc"],
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                            )
                                        ),
                                      ),
                                    ],
                                  )
                                ),
                              );
                            }).toList(),
                          )
                      ),
                      // Container(height:50),
                      Container(
                        // height: double.infinity,
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 3,
                            padding: EdgeInsets.zero,
                            primary: PC,
                          ),
                          child: const SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Center(child: Text("ADD PILL"))
                          ),
                          onPressed: () {
                            // Navigator.pushNamed(context, "/init_screen_four");
                          },
                        ),
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

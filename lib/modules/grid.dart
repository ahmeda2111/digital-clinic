// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Tt extends StatefulWidget {
  const Tt({Key? key}) : super(key: key);
  @override
  State<Tt> createState() => _TtState();
}

class _TtState extends State<Tt> {
  int partial = 0;
  final List cards =[
    {
      "title": "Start Live",
      "subTitle": "1 Active Live",
      "total": "Total Lives is 13 Live",
      "color1": 0xffeaf3fe, // grad
      "color2": 0xffb1c4f2, // grad
      "textColor": 0xff0d2f50,
      "circleColor": 0xb7b8cdff,
      "icon": Icon(
        Icons.wifi,
        color: Color(0x9b0f2e4e).withOpacity(0.4),
        size: 25,
      ),
    },
    {
      "title": "Joining Requests",
      "subTitle": "",
      "total": "Total Requests Is 200 Students",
      "color1": 0xfffef8f2,
      "color2": 0xfffbeddc,
      "textColor": 0xff0d2f50,
      "circleColor": 0x99ffcb67,
      "icon": Icon(
        Icons.wifi,
        color: Color(0x9b0f2e4e).withOpacity(0.4),
        size: 25,
      ),
    },
    {
      "title": "Wallet",
      "subTitle": "",
      "total": "Total Credit is 13,900 egp",
      "color1": 0xffebfce9,
      "color2": 0xffbceab7,
      "textColor": 0xff0d2f50,
      "circleColor": 0x994b9049,
      "icon": Icon(
        Icons.wifi,
        color: Color(0x9b0f2e4e).withOpacity(0.4),
        size: 25,
      ),
    },
    {
      "title": "Questions Bank",
      "subTitle": "",
      "total": "Total Questions is 13000.",
      "color1": 0xfff8f8ff,
      "color2": 0xffe2e0f4,
      "textColor": 0xff0d2f50,
      "circleColor": 0xffdadae9,
      "icon": Icon(
        Icons.wifi,
        color: Color(0x9b0f2e4e).withOpacity(0.4),
        size: 25,
      ),
    },
    {
      "title": "Upload Files",
      "subTitle": "",
      "total": "Total Filess is 12 files.",
      "color1": 0xffd7ebff,
      "color2": 0xffd0e7fd,
      "textColor": 0xff0d2f50,
      "circleColor": 0xffb4dafb,
      "icon": Icon(
        Icons.wifi,
        color: Color(0x9b0f2e4e).withOpacity(0.4),
        size: 25,
      ),
    },
  ];

  Map icons = {
    "Start Live": Icon(
      Icons.wifi,
      color: Color(0x9b0f2e4e).withOpacity(0.4),
      size: 25,
    ),
    "Joining Requests": Icon(
      Icons.request_page_outlined,
      color: Color(0xffe2b052).withOpacity(0.4),
      size: 25,
    ),
    "Wallet": Icon(
      Icons.wallet_giftcard,
      color: Color(0xff4b9049).withOpacity(0.4),
      size: 25,
    ),
    "Questions Bank": Icon(
      Icons.question_answer_outlined,
      color: Color(0xffa9abdc).withOpacity(0.4),
      size: 25,
    ),
    "Upload Files": Icon(
      Icons.upload_file,
      color: Color(0x992b68a6).withOpacity(0.4),
      size: 25,
    ),
  };

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(),
          appBar: AppBar(
            backgroundColor: Colors.white,
            // elevation: 0,
            leadingWidth: 61,
            leading: Container(
              margin: const EdgeInsets.fromLTRB(11, 0, 0, 0),
              child: Builder(
                  builder: (context) {
                    return IconButton(
                      icon: Container(
                        height: 50,
                        width: 50,
                        child: const Icon(
                          Icons.grid_view,
                          color: Color(0xff000000),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xfff7f6f9),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    );
                  }
              ),
            ),
            centerTitle: true,
            title: Container(
              width: 100,
              child: const Image(
                image: AssetImage("assets/ukkera.png"),
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 11, 0),
                child: IconButton(
                  icon: Container(
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.notifications_none,
                      color: Color(0xff000000),
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xfff7f6f9),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                // search part
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  // height: 60,
                  color: Colors.green,
                ),

                // actual body
                Expanded(
                  child: Column(
                    children: [
                      // cover picture
                      Stack(
                        children: [
                          Container(
                            height: 153,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(
                                  colors: [Color(0xff2b68a6), Color(0xffb1c4f2) ],
                                  stops: [0, 1],
                                  begin: Alignment(0.64, 0.77),
                                  end: Alignment(-0.64, -0.77),
                                  // scale: undefined,
                                )
                            ),
                          ),

                          Container(
                            height: 153,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 11,
                                    child: Container(
                                      padding: EdgeInsets.all(12),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
                                              child: const Image(
                                                alignment: Alignment.centerLeft,
                                                image: AssetImage("assets/ukkera.png"),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              padding: EdgeInsets.only(left: 12),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text(
                                                      "Will Helps You",
                                                      style: TextStyle(
                                                        fontFamily: 'BigCaslon',
                                                        color: Color(0xffffffff),
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                        fontStyle: FontStyle.normal,
                                                      )
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              padding: EdgeInsets.only(left: 12),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text(
                                                      "to Grow Up",
                                                      style: TextStyle(
                                                        fontFamily: 'Gotu',
                                                        color: Color(0xffffffff),
                                                        fontSize: 10,
                                                        fontWeight: FontWeight.w400,
                                                        fontStyle: FontStyle.normal,
                                                      )
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              padding: EdgeInsets.only(left: 12),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text(
                                                      "Your Audience",
                                                      style: TextStyle(
                                                        fontFamily: 'BigCaslon',
                                                        color: Color(0xffffffff),
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                        fontStyle: FontStyle.normal,
                                                      )
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              padding: EdgeInsets.only(left: 22),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: const [
                                                  Text(
                                                      "Upgrade your package Now",
                                                      style: TextStyle(
                                                        fontFamily: 'BigCaslon',
                                                        color: Color(0xffffffff),
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500,
                                                        fontStyle: FontStyle.normal,
                                                      )
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    )
                                ),
                                Expanded(
                                    flex: 5,
                                    child: Container(
                                      child: Center(
                                        child: SvgPicture.asset("assets/cards.svg", height: 50,),
                                      ),
                                    )
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                      //  grid
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: GridView.count(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              childAspectRatio: 1.2,
                              shrinkWrap: true,
                              children: cards.map( (card) {
                                return InkWell(
                                  onTap: (){
                                    // Navigator.pushNamed(context, "/teacher_home");
                                  },
                                  child: Container(
                                    clipBehavior: Clip.hardEdge,
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        gradient: LinearGradient(
                                          colors: [Color(card["color1"]), Color(card["color2"]) ],
                                          stops: [0, 1],
                                          begin: Alignment(0.50, 0.87),
                                          end: Alignment(-0.50, -0.87),
                                        )
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Stack(
                                              children: [
                                                Container(
                                                  padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            mainAxisSize: MainAxisSize.max,
                                                            children: [
                                                              Text("${card["title"]}",
                                                                  style: TextStyle(
                                                                    fontFamily: 'BigCaslon',
                                                                    color: Color(card["textColor"]),
                                                                    fontSize: 14,
                                                                    fontWeight: FontWeight.w500,
                                                                    fontStyle: FontStyle.normal,
                                                                  )
                                                              )
                                                            ],
                                                          )
                                                      ),
                                                      Expanded(
                                                          child: card["subTitle"] != ""? Row(
                                                            children: [
                                                              Container(
                                                                  width: 5,
                                                                  height: 5,
                                                                  margin: const EdgeInsets.fromLTRB(2, 0, 4, 0),
                                                                  decoration: const BoxDecoration(
                                                                      color: Color(0xff4b9049)
                                                                  )
                                                              ),
                                                              Expanded(
                                                                child: Text("1 Active Live",
                                                                    style: TextStyle(
                                                                      fontFamily: 'GothicA1',
                                                                      color: Color(card["textColor"]),
                                                                      fontSize: 7,
                                                                      fontWeight: FontWeight.w400,
                                                                      fontStyle: FontStyle.normal,
                                                                    )
                                                                ),
                                                              ),
                                                            ],
                                                          ): Text("")
                                                      ),
                                                      Expanded(
                                                          flex: 2,
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            mainAxisSize: MainAxisSize.max,
                                                            children: [
                                                              Text("${card["total"]}",
                                                                  style: TextStyle(
                                                                    color: Color(card["textColor"]),
                                                                    fontSize: 5,
                                                                    fontFamily: 'GothicA1',
                                                                    fontWeight: FontWeight.w400,
                                                                    fontStyle: FontStyle.normal,
                                                                  )
                                                              )
                                                            ],
                                                          )
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Positioned(
                                                  bottom: -20,
                                                  right: -20,
                                                  child: Container(
                                                    width: 80,
                                                    height: 80,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(40),
                                                        color: Color(card["circleColor"])
                                                    ),
                                                    child: Container(
                                                      margin: EdgeInsets.fromLTRB(0,0, 12, 12),
                                                      child: icons[card["title"]],
                                                    ),
                                                  ),
                                                )
                                              ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }).toList(),
                            )
                        ),
                      )
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


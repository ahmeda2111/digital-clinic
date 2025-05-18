import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class docitem extends StatelessWidget {
  AssetImage dimage;
  final String did;
  final String dname;
  final String sub;
  final String dmonth;
  final String meetmode;
  final String time;
  docitem(this.did, this.dname, this.sub, this.dimage,this.dmonth,this.meetmode,this.time,);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => dcall(),
    child :SafeArea(
      child : Consumer<dcall>(builder: (context, dc, child) {
        return Container(
            color: Colors.white,
            child: Padding(
                padding: const EdgeInsets.all(10),
                child:
                Column(
                    children: [
                      Row(crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Container(
                                height: 50,
                                width: 60,
                                child: CircleAvatar(
                                    radius: 100,
                                    backgroundColor: Colors.deepPurple[100],
                                    child: Stack(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 5, 10, 5),
                                            child:
                                            Icon(Icons.person, size: 40,
                                              color: Color.fromRGBO(
                                                  100, 117, 207, 1),),),
                                          const Align(
                                              alignment: Alignment.bottomRight,
                                              child: CircleAvatar(
                                                  radius: 10,
                                                  backgroundColor: Colors.white,
                                                  child: CircleAvatar(
                                                      radius: 8,
                                                      backgroundColor: Colors
                                                          .green
                                                  )
                                              )
                                          )
                                        ]
                                    )
                                )
                            ),
                            Column(
                                children: [
                                  Consumer<dcall>(
                                      builder: (context, dc, child) {
                                        return
                                          Text(
                                            dc.dname,
                                            style: const TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          );
                                      }
                                  ),
                                  Text(
                                    dc.sub,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ]
                            ),
                            const Expanded(child: Text('')),
                            const Icon(
                              Icons.more_vert_outlined,
                              color: Colors.black38,
                            )
                          ]),
                      Expanded(child: Text('')),
                      Row(
                          children: [
                            if (meetmode == 'video visit ') ...[
                              const Icon(
                                Icons.video_call,
                                color: Colors.black,),
                            ] else
                              ...[
                                const Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black,),
                              ],
                            Text(
                              meetmode,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Expanded(child: Text('')),
                            const Icon(
                              Icons.alarm,
                              color: Colors.black54,
                            ),
                            Text("1 hour",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black38,
                                fontWeight: FontWeight.bold,),),
                          ]
                      ),
                      Expanded(child: Text('')),
                      Row(
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("in 5 days",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,),),
                                  Row(
                                      children: [
                                        Text(
                                          dmonth,
                                          style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          time,
                                          style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ]),

                                ]),
                            Expanded(child: Text('')),
                            Container(
                              height: 40,
                              width: 40,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.video_call, color: Colors.green,),
                                onPressed: () {},
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.green[100],
                                  border: Border.all(
                                    color: Colors.green,
                                  )),),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5),
                              child:
                              Container(
                                height: 40,
                                width: 40,
                                child: IconButton(
                                  icon: const Icon(Icons.wechat,
                                    color: Colors.deepPurpleAccent,),
                                  onPressed: () {},
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.deepPurple[100],
                                    border: Border.all(
                                      color: Colors.deepPurpleAccent,
                                    )),),
                            ),
                          ]),
                      Expanded(child: Text('')),
                      if (meetmode == 'video visit ') ...[
                        Container(

                          height: 25,
                          child: ElevatedButton(
                            child: Text("video call will start soon",
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.green,
                              backgroundColor: Colors.green[100],
                              minimumSize: const Size.fromHeight(45),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ), onPressed: () {},
                          ),
                        ),
                      ] else
                        ...[
                        ],
                    ])
            ));})));}}

class dcall extends ChangeNotifier{

  String dname = "name of doctor";
  String sub = "SUBTITLE";

  get dnames => dname;
  get subs => sub;

  changeName(){
    dname = "AAAA";
    notifyListeners();
  }
  changeName1(){
    sub = "AAAA";
    notifyListeners();
  }
}
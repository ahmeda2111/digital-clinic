import 'package:flutter/material.dart';
import 'package:dccccc/modules/booking/detaildata.dart';
import 'package:dccccc/shared/style/color.dart';
class Detailscreen extends StatelessWidget {
  const Detailscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              bottom: const TabBar(
                indicatorColor: Color.fromRGBO(119,125,167,25),
                tabs: [
                  Tab(child: Text('1.TIME', style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(119,125,167,25),
                    fontWeight: FontWeight.bold,
                  ))),
                  Tab(child: Text('2.DETAILS', style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(119,125,167,25),
                    fontWeight: FontWeight.bold,
                  ))),
                  Tab(child: Text('3.FINISH', style: TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(119,125,167,25),
                    fontWeight: FontWeight.bold,
                  ))),
                ],
              ),
              title: const Text("BOOKING",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,),),
              elevation: 0,
              backgroundColor: IC
          ),
          body: Container(
            color: BC,
            child :
            const TabBarView(
              children: [
                DV(),
                DV(),

                DV(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
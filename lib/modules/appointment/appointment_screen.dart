import 'package:flutter/material.dart';
import 'package:dccccc/modules/appointment/docscreen.dart';
import 'package:dccccc/modules/home page/categery.dart';
import 'package:dccccc/shared/style/color.dart';
import 'package:dccccc/shared/style/font.dart';
import 'package:dccccc/shared/style/font.dart';

class Appoint extends StatelessWidget {
  const Appoint({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              bottom: const TabBar(
                indicatorColor:  Colors.white,
                tabs: [
                  Tab(child: Text('UPCOMING', style: TextStyle
                    (fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,)
                  )),
                  Tab(child: Text('PAST', style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ))),
                ],
              ),
              title: const Text("Appointments",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,),),
              elevation: 0,
              actions: [
                Icon(Icons.calendar_month_outlined,color: Colors.white),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Icon(Icons.add_alert_outlined,color: Colors.white),
                ),
              ],
              backgroundColor: PC,
          ),
          body: Container(
            color: BC,
            child :
            const TabBarView(
              children: [
                docScreen(),
                CategoriesScreen(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
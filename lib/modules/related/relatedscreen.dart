import 'package:dccccc/shared/style/color.dart';
import 'package:flutter/material.dart';
import 'package:dccccc/modules/related/list view.dart';




class relatedscreen extends StatelessWidget {
  const relatedscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              bottom: const TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(child: Text('RECENT', style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ))),
                  Tab(child: Text('TRENDING', style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ))),
                  Tab(child: Text('ALL', style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ))),
                ],
              ),
              title: const Text("RELATED ARTICLES",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,),),
              elevation: 0,
              actions: [
                Icon(Icons.search,color: Colors.black),],
              backgroundColor: PC,
          ),
          body: Container(
            color: IC,
            child: Column(

              children: <Widget>[

                Row(
                    children: <Widget>[
            Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child:
              Text(
              "Topics",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),),
                      Expanded(child: Text('')),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15),),
                        onPressed: null,
                        child: const Text('see all'),
                      ),
                    ],
                ),
                related(),

                ],
            ),
          )
          //SizedBox(
            //child: Container(
              //child: TabBarView(
                //children: [
                  //docScreen(),
                 // docScreen(),
                //],
             // ),
           // ),
          //),
        ),
      ),
    );
  }
}
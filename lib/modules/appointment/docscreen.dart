import 'package:flutter/material.dart';
import 'package:dccccc/data/DOC DATA/doc data.dart';
import 'package:dccccc/data/DOC DATA/docitem.dart';

class docScreen extends StatelessWidget {
  const docScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 600,
        child: GridView.count(
          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
          children: categoryofdata.map((y) =>
              docitem(y.did, y.dname, y.sub,AssetImage(y.dimage),y.dmonth,y.meetmode,y.time,),
          ).toList(),

          crossAxisCount: 1,
          mainAxisSpacing: 5,
          childAspectRatio:4/2,
        )
    );
  }
}
  //@override
  //Widget buildList() =>
      //ListView.builder(
        //itemCount: categoryofdata.length,
       // itemBuilder: (context, index) {
          //inal item = categoryofdata[index];
          //return Container(
            //  height: 315,
            //  child:ListTile(
            //title: Text(
              //dname,
              //style: TextStyle(
               // fontSize: 20,
               // color: Colors.black,
                //fontWeight: FontWeight.bold,
            //  ),
            //),
         // );
        //},
      //);

//}

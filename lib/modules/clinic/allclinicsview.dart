import 'package:flutter/material.dart';
import 'package:dccccc/data/allclinicsDATA/allclinicsdata.dart';
import 'package:dccccc/data/allclinicsDATA/allclinicsitem.dart';



class clinicScreen extends StatelessWidget {
  const clinicScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,



         child: GridView.count(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),

          children: categoryofdata.map((y) =>
              docitem(y.did, y.dname, y.add,AssetImage(y.dimage),),
          ).toList(),

          crossAxisCount: 1,
          mainAxisSpacing: 5,
          childAspectRatio:2.5/1,
        )
    );
  }
}
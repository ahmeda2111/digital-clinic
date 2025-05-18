import 'package:dccccc/shared/style/color.dart';
import 'package:flutter/material.dart';
import 'package:dccccc/modules/clinic/allclinicsview.dart';
import 'package:provider/provider.dart';


class allclinicscreen extends StatelessWidget {
  const allclinicscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:   Text("CLINICS" ,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,),
          ),

          elevation: 0,
          actions: [
            const Icon(Icons.search,color: Colors.white),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.location_on_outlined,color: Colors.white),
            ),
          ],
          backgroundColor: PC
      ),
      body: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            clinicScreen()
    ]
    ),
    )
    );
    }
}

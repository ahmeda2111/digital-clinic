import 'package:flutter/material.dart';
import 'package:dccccc/shared/style/font.dart';

import '../../shared/style/color.dart';
import '../bookingSuccessfull/bksuccessfull.dart';

class DV extends StatelessWidget {
  const DV({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              color: IC,
              width: double.infinity,

              child:const Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 0, 20),
                child: Text("details",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),),),
            Container(
              height: 50,
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(0.0),
              decoration: const BoxDecoration(
                color: IC,
                border: Border(
                  bottom: BorderSide( //                    <--- top side
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Doctor",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                            Text("chikanso chima",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,

                              ),),]),
                      const Expanded(child:Text('')),
                      const Icon(
                        Icons.person_outlined,
                        size: 30,
                        color: Colors.black38,
                      )
                    ]),
              ),),
            Container(
              height: 45,
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(0.0),
              decoration: const BoxDecoration(
                color: IC,
                border: Border(
                  bottom: BorderSide( //                    <--- top side
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Type",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                            Text("Video Visit",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,

                              ),),]),
                      const Expanded(child:Text('')),
                      const Icon(
                        Icons.video_call,
                        size: 30,
                        color: Colors.black38,
                      )
                    ]),
              ),),
            Container(
              height:45,
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(0.0),
              decoration: const BoxDecoration(
                color: IC,
                border: Border(
                  bottom: BorderSide( //                    <--- top side
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Date",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                            Text("25 May , 2020",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,

                              ),),]),
                      const Expanded(child:Text('')),
                      const Icon(
                        Icons.calendar_month_outlined,
                        size: 30,
                        color: Colors.black38,
                      )
                    ]),
              ),),
            Container(
              height: 50,
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(0.0),
              decoration: const BoxDecoration(
                color: IC,
                border: Border(
                  bottom: BorderSide( //                    <--- top side
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Time",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),),
                            Text("11:00-11:40 am",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,

                              ),),]),
                      const Expanded(child:Text('')),
                      const Icon(
                        Icons.alarm,
                        size: 30,
                        color: Colors.black38,
                      )
                    ]),
              ),),
            Container(
              height: 50,
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(0.0),
              decoration: const BoxDecoration(
                color: IC,
                border: Border(
                  bottom: BorderSide( //                    <--- top side
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Insurance",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,

                              ),),
                            Text("no insurance selected",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),),]),
                      const Expanded(child:Text('')),
                      const Icon(
                        Icons.shopping_bag_outlined,
                        size: 30,
                        color: Colors.black38,
                      )
                    ]),
              ),),
            Container(
              height: 50,
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(0.0),
              decoration: const BoxDecoration(
                color: IC,
                border: Border(
                  bottom: BorderSide( //                    <--- top side
                    color: Colors.grey,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Payment",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,

                              ),),
                            Text("after a visit by card",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),),]),
                      const Expanded(child:Text('')),
                      const Icon(
                        Icons.payment,
                        size: 30,
                        color: Colors.black38,
                      )
                    ]),
              ),),
            Container(
              color: IC,

              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 5, 10),
                child: Container(

                  margin: const EdgeInsets.all(5.0),
                  padding:  const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    border: Border.all(
                      color: PC,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(r'$50',
                                  style: TextStyle(
                                    color: PC,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Text("for consultation",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: PC,
                                  ),),]),
                          const Expanded(child:Text('')),
                          const Icon(
                            Icons.payments_outlined,
                            size: 40,
                            color: PC,
                          )
                        ]),
                  ),
                ),
              ),),
            Container(
              height: 40,
              color: IC,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text("confirm",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: IC,
                    backgroundColor: PC,
                    minimumSize: const Size.fromHeight(100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ), onPressed: () {
                  _navigateToNextScreen(context);
                },
                ),
              ),),

          ]
      ),

    );
  }
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => bookSucc()));
  }
}
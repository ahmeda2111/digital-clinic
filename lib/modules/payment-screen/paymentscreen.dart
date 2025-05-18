 import 'package:flutter/material.dart';
import 'package:dccccc/data/paymentcategory/paymentcategery.dart';
import 'package:dccccc/shared/style/color.dart';

class Paymentscreen extends StatelessWidget {
  Paymentscreen({Key? key}) : super(key: key);

  String _selected = 'cash';
  bool cond = true;
  String n1 = 'viza';
  String n2 = 'master card';
  String n3 = 'paypal';
  String n4 = 'applepay';
changeColor(){
  if(_selected == 'cash'){return Colors.red;}
  if (_selected != 'cash'){return Colors.purple;}}

  @override
    Widget build(BuildContext context) {
      return Scaffold(

          appBar: AppBar(
            title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.arrow_back,color: Colors.white),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "Payment",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),),
                  Expanded(child:Text('')),
                  Icon(Icons.exit_to_app_outlined,color: Colors.white),
                ]),
            elevation: 0,
            backgroundColor: PC,),
          body: Container(
            decoration:  const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [ PC, Colors.white24
                ],
                stops: [0.5, 0.5],
              ),
            ),
            child: Column(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Container(
                        margin: const EdgeInsets.all(5.0),
                        padding:  const EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: IC,
                          border: Border.all(
                            color: IC,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children:  [
                                    const CircleAvatar(
                                      radius: 25,
                                      backgroundColor: PC,
                                      child: Icon(
                                        color: Colors.white,
                                        Icons.sell_outlined,
                                        size: 30,
                                      ),),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                      child:
                                      Column(
                                          children: const [
                                            Text(r'$100',
                                              style: TextStyle(
                                                color: PC,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),),
                                            Text("Total Payment",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: PC,
                                              ),),]
                                      ),
                                    ),]
                              ),
                              Container(
                                margin: const EdgeInsets.all(0.0),
                                padding: const EdgeInsets.all(0.0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide( //                    <--- top side
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 20, 0, 10),
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const [
                                              Text("Consultation",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ]
                                        ),
                                        const Expanded(child:Text('')),
                                        const Text(r'$30',
                                          style: TextStyle(
                                            color: PC,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ]
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(0.0),
                                padding: const EdgeInsets.all(0.0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide( //                    <--- top side
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 20, 0, 10),
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const [
                                              Text("Other Manupilation",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ]
                                        ),
                                        const Expanded(child:Text('')),
                                        const Text(r'$35',
                                          style: TextStyle(
                                            color: PC,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ]
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.all(0.0),
                                padding: const EdgeInsets.all(0.0),
                                decoration: const BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide( //                    <--- top side
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 20, 0, 10),
                                  child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const [
                                              Text("Other Manupilation",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black38,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ]
                                        ),
                                        const Expanded(child:Text('')),
                                        const Text(r'$35',
                                          style: TextStyle(
                                            color: PC,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                      ]
                                  ),
                                ),
                              ),
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 150,
                                      margin: const EdgeInsets.all(0.0),
                                      padding: const EdgeInsets.all(0.0),
                                      decoration: const BoxDecoration(
                                        color: IC,
                                        border: Border(
                                          right: BorderSide( //                    <--- top side
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: const [
                                              Text("Date",
                                                style: TextStyle(
                                                  color: Colors.black38,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                              Text("17 May, 2020",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,),

                                              ),
                                            ]
                                        ),

                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      margin: const EdgeInsets.all(0.0),
                                      padding: const EdgeInsets.all(0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(30, 5, 0, 0),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: const [
                                              Text("Time",
                                                style: TextStyle(
                                                  color: Colors.black38,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),),
                                              Text("10:30 pm",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,),

                                              ),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ]
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      "Payment Method",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                  PaymentScreen(),
                  Container(
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                      child: ElevatedButton(
                        child: const Text("confirm",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,),),
                        style: ElevatedButton.styleFrom(

                          backgroundColor:  PC ,
                          minimumSize: const Size.fromHeight(100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ), onPressed: () {

                      },
                      ),
                    ),),

                ]
            ),
          ));}
  }


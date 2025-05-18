import 'package:flutter/material.dart';

import '../give_feedback/give_feedback.dart';
class bookSucc extends StatelessWidget {
  const bookSucc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      backgroundColor: Colors.white,
      body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children:  <Widget>[
          SizedBox(height: 80,),
        CircleAvatar(
          radius: 70,
          backgroundColor: Colors.grey[100],
          child: Icon(
            color: Colors.deepPurpleAccent,
            Icons.calendar_month_outlined,
            size: 70,
          ),),
          SizedBox(height: 30,),
        Text("Booking Successful",
        textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,),),
          SizedBox(height: 20,),

        Text(
          "Your booking has been successful,the reminder is set automatically",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
            ),),
          SizedBox(height: 30,),
        Text("view details",
        textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.deepPurpleAccent,
            fontWeight: FontWeight.bold,
            ),),
          Expanded(child: Text('')),
          Container(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 10),
              child: ElevatedButton(
                child: const Text("GOT IT",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,),),
                style: ElevatedButton.styleFrom(

                  backgroundColor:  Colors.deepPurpleAccent ,
                  minimumSize: const Size.fromHeight(100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ), onPressed: () {
                _navigateToNextScreen(context);


              },
              ),
            ),),
    ])

      );}

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => GiveFeedback()));
  }

  }


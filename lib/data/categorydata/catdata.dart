

import 'package:flutter/material.dart';
import 'package:dccccc/data/categorydata/categorydata.dart';
const person= Icon(Icons.person ,size: 40, color: Color.fromRGBO(100, 117, 207,1),);
const hosp= Icon(Icons.local_hospital ,size: 40, color: Color.fromRGBO(100, 117, 207,1),);
const heart= Icon(Icons.heart_broken_outlined ,size: 40, color: Color.fromRGBO(100, 117, 207,1),);
const cr= Icon(Icons.colorize_rounded ,size: 40, color: Color.fromRGBO(100, 117, 207,1),);
const ai= Icon(Icons.assignment_ind_outlined,size: 40,color: Color.fromRGBO(100, 117, 207,1),);
const note= Icon(Icons.note ,size: 40, color: Color.fromRGBO(100, 117, 207,1),);


List<Category1> categoryofdata = [
  Category1(
      id: 'a1',
      name: 'doctors',
      name2: 'short description',
      image: 'assets/images/doctor.png',
      iconName:   person
  ),


  Category1(
      id: 'a2',
      name: 'clinics',
      name2: 'short description',
      image: 'assets/images/c.png',
    iconName:  hosp

  ),

  Category1(
      id: 'a3',
      name: 'specialities',
      name2: 'short description',
      image: 'assets/images/h.png',
    iconName:  heart
  ),
  Category1(
      id: 'a4',
      name: 'labs',
      name2: 'short description',
      image: 'assets/images/research.png',
    iconName: cr
  ),
  Category1(
      id: 'a5',
      name: 'Insurance',
      name2: 'short description',
      image: 'assets/images/clinic-history.png',
    iconName:  ai
  ),

  Category1(
      id: 'a6',
      name: 'Related Articles',
      name2: 'short description',
      image: 'assets/images/spirometer.png',
      iconName:  note
  ),
];

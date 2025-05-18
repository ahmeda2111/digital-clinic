import 'package:flutter/material.dart';
class payitem extends StatelessWidget {
  final String id;
  final String name;
  payitem(this.id, this.name,);
  String _selected ='nothing';
  changeColor(){
    if(_selected == 'nothing'){return Colors.deepPurple[100];}
    if(_selected == name){return Colors.black;}
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child:
      Padding(
        padding: const EdgeInsets.fromLTRB(5,5,5, 5),
        child: ElevatedButton(
          child:  Text(
            name,
            style: TextStyle(
              fontSize: 20,
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),),
          style: ElevatedButton.styleFrom(
            backgroundColor: changeColor(),
            side: BorderSide(color: Colors.deepPurpleAccent, width: 1),
            minimumSize: const Size.fromHeight(100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),),

          ), onPressed: () {
          _selected = name;

          print(_selected);
          print(name);

        },
        ),
      ),

    );

  }
}


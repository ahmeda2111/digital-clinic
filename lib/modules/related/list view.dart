import 'package:dccccc/shared/style/color.dart';
import 'package:flutter/material.dart';

class related extends StatefulWidget {
  @override
  _related createState() => _related();}
class _related extends State<related> {
  String _selectedsearch = '';
  var list = ["#all", "#covid-19", "#pandemic"];
  late String name;
  void setSelectedcash(String x) {
    setState(() {_selectedsearch = x; });}
  @override
  Widget build(BuildContext context) {
    return Wrap(
          spacing: 6.0,
          runSpacing: 0.0,
          children: <Widget>[for (var item in list)
            CustomElevatedButton(item,
                _selectedsearch == item
                    ? PC
                    : _selectedsearch != item
                    ? Colors.grey
                    : Colors.grey, () {
                  setSelectedcash(item);}),]);}}
class CustomElevatedButton extends StatelessWidget {
  final String it;
  final Color buttonColor;
  final void Function() onPressed;
  CustomElevatedButton(this.it, this.buttonColor, this.onPressed);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child:ElevatedButton(
              onPressed: onPressed,
              child: Text(
                  it,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,)),
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),),),),),),
      ],
    );
  }
}
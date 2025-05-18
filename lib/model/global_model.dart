import 'package:flutter/cupertino.dart';


class GlobalSt extends ChangeNotifier{
  String varGlobal = "new___new";
  String name = "karim";
  String name1 = "said";

  get nametwo => name;
  get nameone => name1;

  changeName(){
    name = "kkkkkk";
    notifyListeners();
  }
  changeName1(){
    name1 = "ssss";
    notifyListeners();
  }
}

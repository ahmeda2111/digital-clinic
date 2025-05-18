// import 'dart:ffi';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/avd.dart';
import 'dart:convert' as convert;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
// import 'package:task1/modules/testtt.dart';

import '../model/global_model.dart';

class Tt extends StatefulWidget {
  const Tt({Key? key}) : super(key: key);
  @override
  State<Tt> createState() => _TtState();
}

class _TtState extends State<Tt> {
  int partial = 0;
  List posts = [];
  Future getPost() async {
    var url = "https://jsonplaceholder.typicode.com/posts?id=40&userId=4";
    var response = await http.get(
        Uri.parse(url)
    );
    var responsebody = jsonDecode(response.body);
    // print(responsebody[1]);
    posts.addAll(responsebody);
    print(posts);
  }

  addPosts() async {
    var url = "https://jsonplaceholder.typicode.com/posts";
    var response = await http.post(
      Uri.parse(url),
      body: {
        "title": 'foo',
        "body": 'bar',
        "userId": "1",
      }
    );
    var responsebody = jsonDecode(response.body);
    // print(responsebody[1]);
    print(responsebody);
    return responsebody;
  }
  var textcc = "ok";
  @override
  initState(){
    getPost();
    super.initState;
  }
  Widget build(BuildContext context) {


    changeColor(){
      if(true){return Colors.indigo;}
    }



    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Model(),
        ),
        Provider(
          create: (context) => NewModel(),
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              //   try___try___try___try___
              Expanded(
                // flex: 1,
                  child: Consumer<GlobalSt>(builder: (context, globalSt, child){
                    return Text(globalSt.varGlobal);
                  })
              ),

              Selector<Model, String>(
                selector: (context, provs1) => provs1.name,
                builder: (context, provone, child){
                  print("111111");
                  return Column(
                    children: [
                      Text(provone),
                      // MaterialButton(
                      //   onPressed: () {
                      //     provone.changeName1();
                      //   },
                      //   color: Colors.indigo,
                      //   child: Text("aaaaaaa"),
                      // ),

                    ],
                  );;
                },
              ),



              Container(
                child: ElevatedButton(
                  onPressed: () {  },
                  child: Text("aaa"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: changeColor(),
                    // backgroundColor: true?Colors.indigo:Colors.indigo
                  ),
                ),
              ),






              Consumer<Model>(
                builder: (context, model, child){
                  print("2222222");
                  return Column(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          model.changeName();
                        },
                        color: Colors.indigo,
                        child: Text("aaaaaaa"),
                      ),
                    ],
                  );
                },
              ),
              Selector<Model, String>(
                selector: (context, provs1) => provs1.name1,
                builder: (context, provone, child){
                  print("333333");
                  return Column(
                    children: [
                      Text(provone),
                      // MaterialButton(
                      //   onPressed: () {
                      //     provone.changeName1();
                      //   },
                      //   color: Colors.indigo,
                      //   child: Text("aaaaaaa"),
                      // ),

                    ],
                  );;
                },
              ),
              Consumer<NewModel>(
                builder: (context, model, child){
                  print("4444444");
                  return Column(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          model.changeName1();
                        },
                        color: Colors.indigo,
                        child: Text("aaaaaaa"),
                      ),
                    ],
                  );
                },
              ),
              // ChildWidget(),
            ],
          )
        ),
      )
    );
  }
}




class Model extends ChangeNotifier{
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


class NewModel{
  String name = "karim";
  String name1 = "said";

  get nametwo => name;
  get nameone => name1;

  changeName(){
    name = "kkkkkk";
    // notifyListeners();
  }
  changeName1(){
    name1 = "ssss";
    // notifyListeners();
  }
}
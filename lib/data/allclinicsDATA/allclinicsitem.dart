import 'package:dccccc/modules/booking/booking.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class docitem extends StatelessWidget {
  AssetImage dimage;
  final String did;
  final String dname;
  final String add;
  docitem(this.did, this.dname, this.add, this.dimage,);git status
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child : Consumer<provall>(builder: (context, prov, child) {
      return Container(
          color: Colors.white,
          child: Padding(
              padding:  EdgeInsets.all(10),
              child:
              Column(

                  children: [


                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Padding(
                            padding:  EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child:
                            Container(
                                height: 55,
                                width:55,
                                child:CircleAvatar(
                                    radius: 100,
                                    //backgroundImage: image,
                                    backgroundColor: Colors.deepPurple[100],

                                    child: Stack(
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.fromLTRB(8, 6, 6, 5),
                                            child:
                                            Icon(Icons.person ,size: 40, color: Color.fromRGBO(100, 117, 207,1),),),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: CircleAvatar(
                                                  radius: 10,
                                                  backgroundColor: Colors.white,
                                                  child: CircleAvatar(
                                                      radius: 8,
                                                      backgroundColor: Colors.green
                                                  )
                                              )
                                          )
                                        ]
                                    )
                                )


                            ),),
                          Column(
                              children: [
                                Text(
                                  prov.cname,
                                  style:  TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(

                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.black38,
                                      ),
                                      Text(
                                        '68km away',
                                        style:  TextStyle(
                                          fontSize: 10,
                                          color: Colors.black38,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                    ]),

                              ]
                          ),
                          Expanded(child:Text('')),
                          Padding(
                            padding:  EdgeInsets.fromLTRB(0, 0, 4, 0),
                            child:

                            Container(
                              height: 30,
                              width: 50,
                              color: Colors.deepPurple[50],


                              child:
                              Padding(
                                padding:  EdgeInsets.fromLTRB(4, 0, 4, 0),
                                child:

                                Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.deepPurpleAccent,
                                        size: 15,),
                                      Text(
                                        '4.7',
                                        style:  TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ]
                                ),),
                            ),),

                        ]
                    ),
                    Expanded(child:Text('')),
                    Expanded(child:Text('')),
                    Row(
                        children: [
                          Padding(
                            padding:  EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child:

                            Container(
                              alignment: Alignment.center,
                              height: 40,
                              width: 40,


                              child: IconButton(

                                icon:  Icon(Icons.location_on_outlined, color: Colors.grey,),
                                onPressed: () {  },
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),

                                  border: Border.all(
                                    color: Colors.grey,
                                  )

                              ),),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Text(
                              add,
                              style:  TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Expanded(child:Text('')),
                          IconButton(
                            icon: Icon(Icons.arrow_forward,size: 20,color: Colors.grey,),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
                            {
                              return Detailscreen();
                            }
                            )
                            );
                            }
                          ),


                        ]
                    ),

                  ]
              )
          )
       );
        }
        ));
  }
}
class provall extends ChangeNotifier{

  String cname = "name of clinics";
  String add = "SUBTITLE";

  get dcnames => cname;
  get subs => add;

  changeName(){
    cname = "AAAA";
    notifyListeners();
  }
  changeName1(){
    add = "AAAA";
    notifyListeners();
  }
}
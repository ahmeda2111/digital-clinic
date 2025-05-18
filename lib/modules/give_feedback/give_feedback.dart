import 'package:dccccc/modules/home%20page/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dccccc/shared/style/color.dart';

// import 'package:task1/main.dart';

import '../../shared/style/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../model/global_model.dart';
// var color1 = "#6F7ED7"
class GiveFeedback extends StatefulWidget {
  const GiveFeedback({Key? key}) : super(key: key);
  @override
  State<GiveFeedback> createState() => _GiveFeedbackState();
}

class _GiveFeedbackState extends State<GiveFeedback> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: PC,
            centerTitle: true,
            toolbarHeight:75,
            elevation: 0,
            title: const Text("Give Feedback",
                style: TextStyle(
                    color: Colors.white,
                )
            ),
            actions: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.cancel,
                        color: Colors.white,
                        size: 28,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],

          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            color: IC,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: const Center(
                    child: Text("General Score",
                      style: TextStyle(
                        color: PC,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                          child: const Text(
                            "3.4",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        RatingBarIndicator(
                          rating: 3.4,
                          itemCount: 5,
                          itemSize: 30.0,
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                ),
                      ],
                    ),
                  ),


            ),


                Expanded(
                  flex: 1,
                  child: Text(""),
                ),


                Expanded(
                  // flex: 1,
                  child: Consumer<GlobalSt>(builder: (context, globalSt, child){
                    return Text(globalSt.varGlobal);
                  })
                ),

                Expanded(
                    flex: 1,
                    child: Container(
                        width: double.infinity,
                        color: BC,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: const Icon(
                                      Icons.access_time,
                                      color: Colors.indigoAccent,
                                      size: 15,
                                    ),
                                  ),
                                  const Text("Wait Time",
                                    style: TextStyle(
                                      color: PC,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: const Text(
                                      "5",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: PC,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                  RatingBarIndicator(
                                    rating: 5,
                                    itemCount: 5,
                                    itemSize: 20.0,
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                    )
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                        width: double.infinity,
                        color: BC,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: const Icon(
                                      Icons.monitor_heart_outlined,
                                      color: Colors.indigoAccent,
                                      size: 15,
                                    ),
                                  ),
                                  const Text("Bedside Manner",
                                    style: TextStyle(
                                      color: PC,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: const Text(
                                      "5",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: PC,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                  RatingBarIndicator(
                                    rating: 5,
                                    itemCount: 5,
                                    itemSize: 20.0,
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                    )
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                        width: double.infinity,
                        color: BC,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: const Icon(
                                      Icons.headset_mic_sharp,
                                      color: Colors.indigoAccent,
                                      size: 15,
                                    ),
                                  ),
                                  const Text("Consulting",
                                    style: TextStyle(
                                      color: PC,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                                    child: const Text(
                                      "4",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: PC,
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                  ),
                                  RatingBarIndicator(
                                    rating: 4,
                                    itemCount: 5,
                                    itemSize: 20.0,
                                    physics: const BouncingScrollPhysics(),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                    )
                ),



                Expanded(
                  flex: 1,
                  child: Text(""),
                ),



                Container(
                  height: 40,
                  child: const Center(
                    child: Text(
                      "You may add your comment please",
                      style: TextStyle(
                          fontSize: 15,
                          color: PC,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 0,
                    padding: const EdgeInsets.fromLTRB(10,2,10,2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: PC, width: 2),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          // labelText: "First Name",
                          labelStyle: TextStyle(color: PC),
                          hintText:"Comment",
                          hintStyle: TextStyle(color: Colors.grey)
                      ),
                      // controller: controller,
                    ),
                  ),

                ),
                const SizedBox(height: 10),



                Expanded(
                  flex: 1,
                  child: Text(""),
                ),


                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // minimumSize: Size.zero,
                    elevation: 3,
                    padding: EdgeInsets.zero,
                    primary: PC,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: const SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Center(child: Text("FINISH"))
                  ),
                  onPressed: () {
                    _navigateToNextScreen(context);

                    // Navigator.pushNamed(context, "/init_screen_four");
                  },
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // minimumSize: Size.zero,
                    elevation: 3,
                    padding: EdgeInsets.zero,
                    primary: PC,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: Center(child: Text("SKIP"))
                  ),
                  onPressed: () {
                    _navigateToNextScreen(context);
                    // Navigator.pushNamed(context, "/init_screen_four");
                  },
                ),
                const SizedBox(height: 30,),

              ],
            ),
          ),

      ),
    );
  }
  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage()));
  }
}




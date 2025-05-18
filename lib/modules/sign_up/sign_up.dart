import 'package:flutter/material.dart';
import 'package:dccccc/shared/style/color.dart';
import 'package:provider/provider.dart';

import '../../shared/style/widgets.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  State<SignUp> createState() => _SignUpState();}
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => upcall(),
        child :SafeArea(
            child : Consumer<upcall>(builder: (context, upc, child)
            {
              return SafeArea(
                child: Scaffold(
                    resizeToAvoidBottomInset: false,
                    appBar: AppBar(
                      backgroundColor: PC,
                      toolbarHeight: 75,
                      centerTitle: true,
                      elevation: 0,
                    ),
                    body: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Stack(
                        alignment: AlignmentDirectional.topCenter,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: Container(
                              color: BC,
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ),
                          Container(
                            color: PC,
                            width: double.infinity,
                            height: 250,
                          ),
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            height: double.infinity,
                            color: IC,
                            child: Column(
                              children: [
                                const Expanded(
                                  flex: 2,
                                  child: Center(
                                    child: Text("Sign Up",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 32,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),

                                ),
                                const Expanded(
                                  flex: 2,
                                  child: Text(
                                    "Please enter your credentials to proceed",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 0,
                                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: PC, width: 2),
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          // labelText: "First Name",
                                          labelStyle: TextStyle(color: PC),
                                          hintText: "Name",
                                          hintStyle: TextStyle(color: PC)
                                      ),
                                      // controller: controller,
                                    ),
                                  ),

                                ),
                                const SizedBox(height: 10,),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 0,
                                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: PC, width: 2),
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          // labelText: "First Name",
                                          labelStyle: TextStyle(color: PC),
                                          hintText: "Email",
                                          hintStyle: TextStyle(color: PC)
                                      ),
                                      // controller: controller,
                                    ),
                                  ),

                                ),
                                const SizedBox(height: 10,),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 0,
                                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: PC, width: 2),
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          // labelText: "First Name",
                                          labelStyle: TextStyle(color: PC),
                                          hintText: "Mobile Number",
                                          hintStyle: TextStyle(color: PC)
                                      ),
                                      // controller: controller,
                                    ),
                                  ),

                                ),
                                const SizedBox(height: 10,),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: 0,
                                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: PC, width: 2),
                                    ),
                                    child: const TextField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          // labelText: "First Name",
                                          labelStyle: TextStyle(color: PC),
                                          hintText: "Password",
                                          hintStyle: TextStyle(color: PC)
                                      ),
                                      // controller: controller,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    // minimumSize: Size.zero,
                                    elevation: 3,
                                    padding: EdgeInsets.zero,
                                    primary: PC,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)),
                                  ),
                                  child: SizedBox(
                                      width: double.infinity,
                                      height: 50,
                                      child: Center(child: Text("SIGN UP"))
                                  ),
                                  onPressed: () {
                                    // Navigator.pushNamed(context, "/init_screen_four");
                                  },
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("------",
                                        style: TextStyle(
                                          color: IC,
                                          decoration: TextDecoration.lineThrough,
                                          decorationThickness: 0.3,
                                          decorationColor: Colors.grey,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Text("OR CONNECT USING",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text("------",
                                        style: TextStyle(
                                          color: IC,
                                          decoration: TextDecoration.lineThrough,
                                          decorationThickness: 0.3,
                                          decorationColor: Colors.grey,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  margin: const EdgeInsets.all(20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      RawMaterialButton(
                                        onPressed: () {},
                                        elevation: 1.0,
                                        fillColor: IC,
                                        padding: const EdgeInsets.all(10.0),
                                        shape: const CircleBorder(
                                          side: BorderSide(width: 4,
                                              color: PC,
                                              style: BorderStyle.solid),
                                        ),
                                        child: const Text("f",
                                          style: TextStyle(
                                            color: PC,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ),
                                      RawMaterialButton(
                                        onPressed: () {},
                                        elevation: 1.0,
                                        fillColor: IC,
                                        child: Text("G",
                                          style: TextStyle(
                                            color: PC,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                        padding: EdgeInsets.all(10.0),
                                        shape: CircleBorder(
                                          side: BorderSide(width: 4,
                                              color: PC,
                                              style: BorderStyle.solid),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              );})));}}
class upcall extends ChangeNotifier{
  String username = "name of user";
  String useremail = "email of user";
  String usernumber = "number of user";
  String userpass = "passward of user";
  get usernames => username;
  get useremails => useremail;
  get usernumbers => usernumber;
  get userpassw=> userpass;
  changeName(){
    username = "AAAA";
    notifyListeners();
  }
  changeName1(){
    useremail = "AAAA";
    notifyListeners();
  }
  changeName2(){
    usernumber = "AAAA";
    notifyListeners();
  }
  changeName3(){
    userpass = "AAAA";
    notifyListeners();
  }
}
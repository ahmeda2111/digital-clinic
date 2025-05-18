import 'package:dccccc/modules/tt.dart';
import 'package:flutter/material.dart';
import 'package:dccccc/modules/home page/categery.dart';
import 'package:dccccc/shared/style/color.dart';
import 'package:dccccc/modules/booking/booking.dart';
import 'package:provider/provider.dart';
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => Model(),
      child :Scaffold(
      appBar: AppBar(
          backgroundColor: PC,
          titleSpacing: 0,
          title: const Text("Home Page",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,),),
          elevation: 0
      ),
      body:  Consumer<Model>(builder: (context, model, child){
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: BC,
        child : SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                color: PC,
                child:const Padding(
                  padding: EdgeInsets.fromLTRB(10,1, 10, 5),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Doctor, Clinics ...",
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 30,),
                          borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      fillColor: Colors.white,
                      filled: true,),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: 2000,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.orange[200],
                          child: const Icon(
                            color: Colors.orange,
                            Icons.emergency_outlined,
                            size: 40,
                          ),),
                        const SizedBox(width: 20,),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 6, 0, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Emergency",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,),),
                                Text("Short description",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,),),
                              ],
                            ),),),
                        Expanded(child:Text('     ')),
                        IconButton(
                          icon: const Icon(Icons.arrow_forward_ios_outlined ,color: PC,),
                          onPressed: () {  },
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: IC,
                      minimumSize: const Size.fromHeight(45),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ), onPressed: () {
                  },
                  ),

                ),
              ),
              const CategoriesScreen(),
            ],
          ),
        ),
      );
      }),
      bottomNavigationBar: BottomNavigationBar(

          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 0,
          fixedColor:  PC,
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home',),
            BottomNavigationBarItem(icon: Icon(Icons.chat_outlined),label: 'chat',),
            BottomNavigationBarItem(icon: Icon(Icons.medical_services),label: 'medical',),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined),label: 'calender',),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile',),
          ]
      ),
      ));
  }

}
class Model extends ChangeNotifier{
  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}

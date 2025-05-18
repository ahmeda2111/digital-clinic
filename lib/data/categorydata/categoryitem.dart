import 'package:dccccc/modules/clinic/allclinicscreen.dart';
import 'package:dccccc/modules/related/relatedscreen.dart';
import 'package:flutter/material.dart';
import 'package:dccccc/modules/appointment/appointment_screen.dart';
import 'package:dccccc/shared/style/color.dart';

class Catitem extends StatelessWidget {
  final String id;
  final String name;
  final String name2;
  final Icon iconName;
  AssetImage image;


  Catitem(this.id, this.name, this.name2, this.image,this.iconName);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ElevatedButton(
        onPressed: () {if (name == 'doctors') {

          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return Appoint();
          }
          )
          );
        }
          else if(name == 'clinics') {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return allclinicscreen();
          }
          )
          );

          //_navigateToNextScreen2(context);
        }
        else if(name == 'Related Articles') {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return relatedscreen();
          }
          )
          );

          //_navigateToNextScreen2(context);
        }




        },
        child:Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child:
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 45,
                    width:45,
                    child:CircleAvatar(
                      radius: 60,
                      //backgroundImage: image,
                      backgroundColor: Colors.deepPurple[100],
                      child: iconName,
                    ),
                  ),
                  Expanded(child:Text('')),
                  Container(
                    child:Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child:Text(
                      name2,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ]
            )
        ),
    style: ElevatedButton.styleFrom(
    backgroundColor: IC,
    minimumSize: const Size.fromHeight(20),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(0.0),
    ),
        ),

      ),
    );
  }
}



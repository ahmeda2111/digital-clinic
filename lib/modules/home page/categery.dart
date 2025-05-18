import 'package:flutter/material.dart';
import 'package:dccccc/data/categorydata/catdata.dart';
import 'package:dccccc/data/categorydata/categoryitem.dart';



class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
    height: 500,
      child: GridView(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      children: categoryofdata.map((x) =>
          Catitem(x.id, x.name, x.name2,AssetImage(x.image),x.iconName),
      ).toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3/2,
        crossAxisSpacing: 20,
        mainAxisSpacing:20,
      ),
    )
        );
  }
}

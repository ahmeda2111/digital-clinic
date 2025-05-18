import 'package:flutter/material.dart';
import 'package:dccccc/data/paymentcategory/paymentcategoryitem.dart';
import 'package:dccccc/data/paymentcategory/paymentdata.dart';
class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        child: GridView(
          children: paymentofdata.map((z) =>
              payitem(z.id, z.name),
          ).toList(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 6/2,
            crossAxisSpacing: 0,
            mainAxisSpacing:0,
          ),
        )
    );
  }
}
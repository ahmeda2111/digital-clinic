import 'package:dccccc/modules/tt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:task1/modules/tt.dart';

class ChildWidget extends StatefulWidget {
  const ChildWidget({Key? key}) : super(key: key);

  @override
  State<ChildWidget> createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  Widget build(BuildContext context) {
    var model = Provider.of<Model>(context, listen: true);
    return Column(
      children: [
        // Text(model.name1),
        Text(context.read<Model>().name1),
        MaterialButton(
          onPressed: () {
            model.changeName1();
          },
          color: Colors.indigo,
          child: Text("aaaaaaa"),
        ),

        // Text(model.name),
        // Text(model.name1),
        // Text(model.name1),
        // Text(model.name)

      ],
    );
  }
}

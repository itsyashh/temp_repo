import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String name;
  const TextFieldWidget(this.name, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: TextFormField(
          decoration: InputDecoration(
              // icon: Icon(Icons.mail),
              labelText: name,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              )),
        ));
  }
}

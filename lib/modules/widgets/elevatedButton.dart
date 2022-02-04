import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String name;

  const ElevatedButtonWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: Colors.green.shade300,
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 18),
              textStyle:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          child: Text(name),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String name;

  const CardWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 160,
        width: 160,
        child: Center(
          child: ListTile(
            title: Text(
              name,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      elevation: 8,
      shadowColor: Colors.green,
      margin: const EdgeInsets.all(20),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String myTitle;
  final String person;

  const CardWidget({Key? key, required this.myTitle, required this.person})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 57, 66, 151),
      margin: EdgeInsets.all(11),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
      child: Container(
        padding: EdgeInsets.all(11),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(myTitle,
                style: TextStyle(fontSize: 27, color: Colors.white),
                textDirection: TextDirection.rtl),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete),
                  iconSize: 27,
                  color: Color.fromARGB(255, 255, 217, 217),
                ),
                Text(person,
                    style: TextStyle(fontSize: 17, color: Colors.white),
                    textDirection: TextDirection.rtl),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

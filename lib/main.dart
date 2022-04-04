// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lesson12/widgets/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Quotes(),
    );
  }
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class BestQuotes {
  String title;
  String author;

  BestQuotes({required this.title, required this.author});
}

class _QuotesState extends State<Quotes> {
  List AllQuotes = [    
    BestQuotes(author: "Ali Hassan", title: "رايق من نوعة فاخر 🔥"),
    BestQuotes(author: "Ali Hassan", title: "رايق من نوعة فاخر 🔥"),
    BestQuotes(author: "Ali Hassan", title: "رايق من نوعة فاخر 🔥"),
    BestQuotes(
        author: "Ali 7assan", title: "العقل السليم في البعد عن الحريم 😂"),
    BestQuotes(
        author: "Ali Elrayek",
        title: "كُتر التفكير فى الى ضااااع هيعمل لك فى دماغك صادااااع  😉 "),
    BestQuotes(
        author: "ELRAYEK",
        title: "فرح نفسك بنفسك ومتستناش حاجة حلوة من حد  ✋ "),
  ];



 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 50, 57, 121),
        title: Text(
          "Best Quotes",
          style: TextStyle(fontSize: 27),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: 
      
          AllQuotes.map((item) => CardWidget(
            myTitle: item.title,
            person: item.author,
          )).toList()
          
         
          
          ,
        ),
      ),
    );
  }
}

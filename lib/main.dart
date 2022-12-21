import 'package:flutter/material.dart';
import 'dybala.dart';
import 'messi.dart';
import 'neymar.dart';
import 'ronaldo.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget b = Container(
    height: 400,
    width: 400,
    child: Image.asset(
      'image/manada.jpg',
      fit: BoxFit.fill,
    ),
  );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Footballer Test')),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 710,
            width: 400,
            color: Colors.white,
            child: b,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      b = Dybala();
                    });
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Text('Dybala')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      b = Ronaldo();
                    });
                    ;
                  },
                  child: Text('Ronaldo')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      b = Messi();
                    });
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
                  child: Text('Messi')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      b = Neymar();
                    });
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.grey),
                  child: Text('Neymar')),
            ],
          )
        ],
      ),
    );
  }
}

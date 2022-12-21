import 'package:flutter/material.dart';
class Messi extends StatefulWidget {
  const Messi({Key? key}) : super(key: key);

  @override
  State<Messi> createState() => _MessiState();
}

class _MessiState extends State<Messi> {
  bool value1=false;
  bool value2=false;
  String test='';
  @override
  Widget build(BuildContext context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
      Container(
        height: 400,
        child: Column(children: [
          Image.asset('image/messi.jpg'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: value1,
                side: BorderSide(
                    color: Colors.green, width: 1, style: BorderStyle.solid),
                onChanged: (hero1) {
                  setState(() {
                    value1 = hero1!;
                    if(value1){test='True';}
                      else test='';
                  });
                },
              ),
              Text('ParisSG')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: value2,
                side: BorderSide(
                    color: Colors.green, width: 1, style: BorderStyle.solid),
                onChanged: (hero2) {
                  setState(() {
                    value2 = hero2!;
                    if(value2){test='False';}
                      else test='';
                  });
                },
              ),
              Text('Bavariya')
            ],
          ),
        ]),
      ),
      Text(
        'Answer: $test',
        style: TextStyle(fontSize: 20),
      )
    ]);

  }
}
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Counter());

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {

  // Fields
  int counter = 0;
  Color counter_color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
          "شمارنده",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  setState(() {
                    counter = 0;
                    counter_color = Colors.black;
                  });
                }, icon: Icon(Icons.clear))
          ],
        ),
        body: Center(
          child: Text(
            " شماره $counter",
            style: TextStyle(fontSize: 45.0, color: counter_color),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ++counter;
              final random = Random(); // Instantiate from Random class
              counter_color = Color.fromRGBO(random.nextInt(244), random.nextInt(244), random.nextInt(244), 1.0);
            });
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

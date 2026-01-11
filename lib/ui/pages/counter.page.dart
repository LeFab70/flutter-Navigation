
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //const CounterPage({super.key});
  int counter=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("counter"),),
      body: Center(
        child: Text("Counter => $counter"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 20,
        children: [
           FloatingActionButton(
             child: Icon(Icons.add_circle),
               onPressed: (){
               setState(() {
                 ++counter;
               });
               print("${counter}");}),
          FloatingActionButton(
            child: Icon(Icons.remove_circle),
              onPressed:(){
                setState(() {
                  --counter;
                });
              print("${--counter}");} )
        ],
      ),
    );
  }
}

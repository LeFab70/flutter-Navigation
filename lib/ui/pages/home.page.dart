import 'package:flutter/material.dart';
import 'package:navigation_app/ui/widgets/MyDrawer.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          drawer: Mydrawer(),
          appBar: AppBar(
            title: Text("My App"),
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body: Center(
            child: Text("Home page", style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,),
          )

    );
  }
}

import 'package:flutter/material.dart';
import 'package:navigation_app/ui/pages/home.page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (
        MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.lightBlue,
            scaffoldBackgroundColor: Colors.lightBlue.shade50,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepOrangeAccent.shade100,
            )

          ),
          home: HomePage(),
        )
    );
  }
}

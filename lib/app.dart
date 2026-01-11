import 'package:flutter/material.dart';
import 'package:navigation_app/ui/pages/home.page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (
        MaterialApp(
          home: HomePage()
        )
    );
  }
}

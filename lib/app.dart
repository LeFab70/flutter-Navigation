import 'package:flutter/material.dart';
import 'package:navigation_app/ui/pages/counter.page.dart';
import 'package:navigation_app/ui/pages/gallery.page.dart';
import 'package:navigation_app/ui/pages/home.page.dart';
import 'package:navigation_app/ui/pages/meteo.page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return (
        MaterialApp(
          routes: {
            "/":(context)=>HomePage(),
            "/meteo":(context)=>MeteoPage(),
            "/gallery":(context)=>GalleryPage(),
            "/counter":(context)=>CounterPage()
          },
          theme: ThemeData(
            primarySwatch: Colors.lightBlue,
            scaffoldBackgroundColor: Colors.lightBlue.shade50,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepOrangeAccent.shade100,
            )

          ),
          //home: HomePage(),
          initialRoute: "/",
        )
    );
  }
}

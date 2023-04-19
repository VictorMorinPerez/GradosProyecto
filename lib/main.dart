import 'package:flutter/material.dart';
import 'package:programa_de_grados/pages/home_pages.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {
        "home":(context) => HomePage(),
      },
    
      
    );
  }
}
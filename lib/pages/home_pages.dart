import 'package:flutter/material.dart';
import 'package:programa_de_grados/pages/Pagina1.dart';
import 'package:programa_de_grados/pages/Pagina2.dart';
import 'package:programa_de_grados/pages/Pagina3.dart';
import 'package:programa_de_grados/pages/Pagina4.dart';
import 'package:programa_de_grados/pages/Pagina5.dart';
import 'package:programa_de_grados/pages/Pagina6.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 
 with SingleTickerProviderStateMixin
{
  late TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 6, vsync: this);
    controller.addListener(() {
      setState(() {  
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("CONVERTIDOR DE GRADOS"),
      centerTitle: true,
      bottom: TabBar(
        controller: controller,
        tabs: [
        Text("C°-F°"),
        Text("C°-K°"),
        Text("F°-C°"),
        Text("F°-K°"),
        Text("K°-C°"),
        Text("K°-F°")

      ]),
    ),
    body: TabBarView(
      controller: controller,
      children: [
      pagina1(),
      pagina2(),
      pagina3(),
      pagina4(),
      pagina5(),
      pagina6(),
    ],),
  );
}
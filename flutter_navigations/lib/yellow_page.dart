// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class YellowPage extends StatelessWidget {
  const YellowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Yellow Page"), backgroundColor: Colors.yellow,),
      body: Container(child: const Text("Yellow Page", style: TextStyle(fontSize: 24),),),
    );
  }
}
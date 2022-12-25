// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class PurplePage extends StatelessWidget {
  const PurplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Purple Page"), backgroundColor: Colors.purple,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Purple Page", style: TextStyle(fontSize: 24),),

            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, '/orangePage');
            },
            style: ElevatedButton.styleFrom(primary: Colors.orange.shade600),
             child: Text("Go to Orange Page")),
          ],
        ),
      )
    );
  }
}
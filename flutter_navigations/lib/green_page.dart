// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class GreenPage extends StatelessWidget {
  GreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Green Page"), backgroundColor: Colors.green,),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Green Page", style: TextStyle(fontSize: 24),),

            ElevatedButton(
                onPressed: () {
                  if(Navigator.canPop(context)) {
                    print("evet pop olabilir");
                  } else
                    print("hayır olamaz");
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: const Text("Can Pop Kullanımı")),
          ],
        ),
      ),
    );
  }
}
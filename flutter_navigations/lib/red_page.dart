// ignore_for_file: avoid_unnecessary_containers

import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatelessWidget {
  RedPage({super.key});
  int _rastgelesayi = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print("on will pop çalıştı");
        _rastgelesayi = Random().nextInt(100);
        Navigator.pop(context, _rastgelesayi);

        return Future.value(false);
      },
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Red Page"),
            backgroundColor: Colors.red,
           // automaticallyImplyLeading: false,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Red Page",
                  style: TextStyle(fontSize: 24),
                ),
                ElevatedButton(
                    onPressed: () {
                      _rastgelesayi = Random().nextInt(100);
                      print("Üretilen sayı: $_rastgelesayi");
                      Navigator.of(context).pop(_rastgelesayi);
                    },
                    child: const Text("Geri Dön")),

                ElevatedButton(
                onPressed: () {
                  if(Navigator.canPop(context)) {
                    print("evet pop olabilir");
                  } else
                    print("hayır olamaz");
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: const Text("Can Pop Kullanımı")),
              
                ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/orangePage");
                },
                style: ElevatedButton.styleFrom(primary: Colors.orange.shade600),
                child: const Text("Go to Orange Page")),
              ],
            ),
          )),
    );
  }
}

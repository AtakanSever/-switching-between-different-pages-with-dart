// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class OrangePage extends StatelessWidget {
  const OrangePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Orange Page"),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Orange Page",
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(context, (route) => route.isFirst);
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.purple),
                  child: Text("En başa geri dön")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/purplePage");
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.amber),
                  child: Text("Mora geri dön")),
              ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  child: Text("En başa dön")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/yellowPage', (route) => route.isFirst);
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  child: Text("Sarıyı ana sayfadan sonra ekle")),
            ],
          ),
        ));
  }
}

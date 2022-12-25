// ignore_for_file: no_leading_underscores_for_local_identifiers, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigations/green_page.dart';
import 'package:flutter_navigations/orange_page.dart';
import 'package:flutter_navigations/red_page.dart';
import 'package:flutter_navigations/route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      //home: AnaSayfa(),
      // routes: {
      //   "/redPage":(context) => RedPage(),
      //   "/":(context) => AnaSayfa(),
      //   "/orangePage":(context) => OrangePage(),
      // },
      // onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => (Scaffold(
      //   appBar: AppBar(title: Text("Error")),
      //   body: Center(child: Text("404")),
      // ))),

      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: () async {
                  int? _gelenSayi = await Navigator.push<int>(context,
                      CupertinoPageRoute(builder: (redContext) => RedPage()));
                  print("Ana sayfadaki sayı $_gelenSayi");
                },
                style: ElevatedButton.styleFrom(primary: Colors.red.shade600),
                child: const Text("Kırmızı sayfaya git IOS")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push<int>(
                          MaterialPageRoute(builder: (redContext) => RedPage()))
                      .then((int? value) => debugPrint("Gelen Sayı $value "));
                },
                style: ElevatedButton.styleFrom(primary: Colors.red.shade300),
                child: const Text("Kırmızı sayfaya git Android")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).maybePop();
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: const Text("Maybe Pop Kullanımı")),
            ElevatedButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    print("evet pop olabilir");
                  } else
                    print("hayır olamaz");
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: const Text("Can Pop Kullanımı")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: ((context) => GreenPage())));
                },
                style: ElevatedButton.styleFrom(primary: Colors.red),
                child: const Text("Push Replacament Kullanımı")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/orangePage");
                },
                style: ElevatedButton.styleFrom(primary: Colors.blue.shade600),
                child: const Text("PushNamed Kullanımı")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/yellowPage");
                },
                style: ElevatedButton.styleFrom(primary: Colors.yellow.shade600),
                child: const Text("PushNamed Kullanımı Yellow")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/ogrenciListesi", arguments: 60);
                },
                style: ElevatedButton.styleFrom(primary: Colors.orange.shade600),
                child: const Text("Öğrenci Listesi Oluştur")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/purplePage");
                },
                style: ElevatedButton.styleFrom(primary: Colors.purple.shade600),
                child: const Text("Purple Page")),
          ]),
        ));
  }
}

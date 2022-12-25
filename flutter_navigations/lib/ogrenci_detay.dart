import 'package:flutter/material.dart';
import 'package:flutter_navigations/ogrenci_listesi.dart';

class OgrenciDetay extends StatelessWidget {
  final Ogrenci secilenOgrenci;
  const OgrenciDetay({ required this.secilenOgrenci, super.key});

  @override
  Widget build(BuildContext context) {

    var secilen = ModalRoute.of(context)!.settings.arguments as Ogrenci;

    print("Secilen Ogrenci:::::: ${secilen.isim}");
    
    return Scaffold(
      appBar: AppBar(title: Text("Ogrenci Detay"),),
      body: Center(
        child: Column(
          children: [
            Text(secilenOgrenci.id.toString()),
            Text(secilenOgrenci.isim),
            Text(secilenOgrenci.soyisim)
          ],
        ),
      ),
    );
  }
}
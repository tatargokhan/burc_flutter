import 'package:burc_proje/Burcitem.dart';
import 'package:burc_proje/data/strings.dart';
import 'package:burc_proje/model/burc.dart';
import 'package:flutter/material.dart';

class BurclarListesi extends StatelessWidget {
  late List<Burc> tumBurclar;

  BurclarListesi() {
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burclar Listesi'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return BurcItem(
              listelenenBurc: tumBurclar[index],
            );
          },
          itemCount: tumBurclar.length,
        ),
      ),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BurcAdlari[i];
      var burcTarih = Strings.BurcTarihleri[i];
      var burcDetay = Strings.BurcGenelOzellik[i];
      var burcKucukResim = Strings.BurcAdlari[i].toLowerCase() + "${i + 1}.png";
      var burcBuyukResim =
          Strings.BurcAdlari[i].toLowerCase() + "_buyuk" + "${i + 1}.png";

      Burc eklenecekBurc =
          Burc(burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}

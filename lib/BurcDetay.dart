import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burclar'),
      ),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: Colors.pink,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'images/' + secilenBurc.buyukResim,
              fit: BoxFit.cover,
            ),
            title: Text(secilenBurc.burcAdi + "Burcu ve Özellikleri"),
            centerTitle: true,
          ),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Text(secilenBurc.burcDetayi),
          ),
        )
      ]),
    );
  }
}

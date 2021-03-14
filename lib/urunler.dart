import 'package:flutter/material.dart';
import 'package:shop/katagori.dart';

class Urunler extends StatefulWidget {
  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  TabController kontrol;

  @override
  void initState() {
    super.initState();
    kontrol = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
        controller: kontrol,
        indicatorColor: Colors.red[400],
        labelColor: Colors.red [400],
        unselectedLabelColor: Colors.grey,
        isScrollable: true,
        labelStyle:TextStyle(fontSize: 17.0,fontWeight: FontWeight.w500)
        ,tabs: [
          Tab(child: Text("Temel Gıda"),),
          Tab(child: Text("Şekerleme")),
          Tab(child: Text("İçecekler")),
          Tab(child: Text("Temizlik")),
        ]),

        Expanded(
          child: TabBarView(
            controller: kontrol,
            children: [
              Katagoriler(katagori: "Temel Gıda",),
              Katagoriler(katagori:"Şekerleme" ,),
              Katagoriler(katagori: "İçecekler",),
              Katagoriler(katagori: "Temizlik",),
            ],
          ),
        )
      ],
    );
  }
}


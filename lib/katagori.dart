import 'package:flutter/material.dart';
import 'package:shop/urun_detay.dart';

class Katagoriler extends StatefulWidget {
  final String katagori;

  const Katagoriler({Key key, this.katagori}) : super(key: key);

  @override
  _KatagorilerState createState() => _KatagorilerState();
}

class _KatagorilerState extends State<Katagoriler> {
  List<Widget> gosterilecek;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.katagori == "Temel Gıda") {
      gosterilecek = <Widget>[
        urunKarti(
          "Zeytin Yağı",
          "23.50",
          "https://cdn.pixabay.com/photo/2017/07/16/22/22/bath-oil-2510783_1280.jpg",
          mevcut: true,
        ),
        urunKarti("Süt", "23.50",
            "https://cdn.pixabay.com/photo/2016/08/11/23/25/glass-1587258_1280.jpg",
            mevcut: true),
        urunKarti("Un", "10.50",
            "https://cdn.pixabay.com/photo/2016/02/05/15/34/pasta-1181189_1280.jpg",
            mevcut: true),
        urunKarti(
          "Maden Suyu",
          "5.50 TL",
          "https://cdn.pixabay.com/photo/2017/02/02/15/15/bottle-2032980_1280.jpg",
        ),
        urunKarti(
          "Domates",
          "5.0 TL",
          "https://cdn.pixabay.com/photo/2011/03/16/16/01/tomatoes-5356_1280.jpg",
        ),
        urunKarti(
          "Ketçap",
          "12 TL",
          "https://cdn.pixabay.com/photo/2016/06/10/16/17/tomatoes-1448361_1280.jpg",
        ),
        urunKarti(
          "Et",
          "65 TL",
          "https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305_1280.jpg",
        ),
      ];
    } else if (widget.katagori == "Şekerleme") {
      gosterilecek = <Widget>[
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.teal,
        ),
      ];
    } else if (widget.katagori == "İçecekler") {
      gosterilecek = <Widget>[
        Container(
          color: Colors.teal,
        ),
        Container(
          color: Colors.blueAccent,
        ),
      ];
    } else if (widget.katagori == "Temizlik") {
      gosterilecek = <Widget>[
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.teal,
        ),
      ];
    }
  }

  Widget urunKarti(String isim, String fiyat, String resimYolu,
      {bool mevcut = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => UrunDetay(
                      mevcut: mevcut,
                      fiyat: fiyat,
                      isim: isim,
                      resimYolu: resimYolu,
                    )));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 4.0,
                  spreadRadius: 2.0)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: resimYolu,
              child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(resimYolu), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              isim,
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              fiyat,
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.red[400],
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12.0,
      // yatay olarak aralarında ne kadar boşluk olucakç
      crossAxisSpacing: 12.0,
      // dikey olarak aralarında ne kadar boşluk olucakç.
      padding: EdgeInsets.all(10.0),
      // araya boşluk bırakır.
      childAspectRatio: 1,
      // Izgaraların boyutunu ayarlar
      children: gosterilecek,
    );
  }
}

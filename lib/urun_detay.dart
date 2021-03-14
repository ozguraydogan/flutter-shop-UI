import 'package:flutter/material.dart';

class UrunDetay extends StatelessWidget {
  final String fiyat;
  final String isim;
  final String resimYolu;
  final bool mevcut;

  const UrunDetay({Key key, this.fiyat, this.isim, this.resimYolu, this.mevcut}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Hero(
              tag: resimYolu,
              child: Image.network(
                  resimYolu),
            ),
            IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red[400],
                  size: 50.0,
                ),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Column(
          children: [
            Text(
              isim,
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(fiyat,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400]))
          ],
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Burada ürün hakkında bilgi olacak",
            style: TextStyle(
                fontSize: 16.0, color: Colors.grey, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 10.0,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: MediaQuery.of(context).size.width-50.0,
            height: 50.0,
            decoration: BoxDecoration(
              color:mevcut==true?Colors.red[400]:Colors.grey[400],
              borderRadius: BorderRadius.circular(12.0)
            ),
            child: Center(
              child: Text(mevcut==true?"Sepete Ekle":"Ürün Mevcut Değil",
                style: TextStyle(
                    fontSize: 25.0, color: Colors.white, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,),
            ),
          ),
        )
      ],
    ));
  }
}

import 'package:flutter/material.dart';

class Sepetim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Text(
            "Sepetim",
            style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ),
        ListTile(
          title: Text("Çikolatalı Gofret"),
          subtitle: Text("2 adet x 3.50 TL"),
          trailing: Text("5 TL"),
        ),
        ListTile(
          title: Text("Süt"),
          subtitle: Text("2 adet x 3.50 TL"),
          trailing: Text("7 TL"),
        ),
        ListTile(
          title: Text("Kek"),
          subtitle: Text("2 adet x 3.50 TL"),
          trailing: Text("3 TL"),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Column(
                children: [
                  Text(
                    "Toplam Tutar",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),Text(
                    "15 TL",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 45.0,decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.red[400]
          ),
            child: Center(
              child: Text(
                "Alışverişi Tamamla",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}

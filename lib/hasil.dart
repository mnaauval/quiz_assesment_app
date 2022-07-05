import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  // const Hasil({ Key? key }) : super(key: key);
  int totalSkor;
  Function resetKuis;

  Hasil({this.totalSkor, this.resetKuis});

  //Getter
  String get hasilText {
    String hasil = ' ';
    if (totalSkor <= 8) {
      hasil = 'Skor anda $totalSkor (rendah), Anda masih baik-baik saja';
    } else if (totalSkor <= 12) {
      hasil =
          'Skor anda $totalSkor (sedang), Sepertinya Anda harus berhati-hati';
    } else if (totalSkor <= 16) {
      hasil = 'Skor anda $totalSkor (tinggi), Anda dalam bahaya';
    } else {
      hasil =
          'Skor anda $totalSkor (sangat tinggi), Sebaiknya Anda mencari bantuan';
    }
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              hasilText,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: resetKuis,
              child: Text('Mulai lagi'),
              style: TextButton.styleFrom(
                primary: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import './pertanyaan.dart';
import './jawaban.dart';

class Kuis extends StatelessWidget {
  // const Kuis({ Key? key }) : super(key: key);
  Function jawaban;
  List<Map<String, Object>> pertanyaan;
  int soalIndex;

  Kuis({
    @required this.jawaban,
    @required this.pertanyaan,
    @required this.soalIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pertanyaan(
            pertanyaan: pertanyaan[soalIndex]['pertanyaan'],
            index: soalIndex + 1),
        // titik tiga (...) berfungsi membuat flutter mengenali sebagai widget, apapun bentuknya
        ...(pertanyaan[soalIndex]['jawaban'] as List<Map<String, Object>>)
            .map((jawabanText) {
          return Jawaban(
              () => jawaban(jawabanText['skor']), jawabanText['teks']);
        }).toList(),
      ],
    );
  }
}

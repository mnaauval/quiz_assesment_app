import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  // const Pertanyaan({ Key? key }) : super(key: key);
  var pertanyaan;
  var index;

  Pertanyaan({this.pertanyaan, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        '$index. $pertanyaan',
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.left,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class verified extends StatelessWidget {
  final double tamanho;
  final Color cor;

  verified({this.tamanho = 18, this.cor = const Color(0xFF95C11F)});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tamanho,
      height: tamanho,
      decoration: BoxDecoration(
        color: cor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.check,
        size: tamanho * 0.6,
        color: Color(0xFF006633),
      ),
    );
  }
}

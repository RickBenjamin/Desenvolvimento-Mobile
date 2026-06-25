import 'package:flutter/material.dart';

Widget RecentSearch(@required bool isArtista, @required String foto, @required String nome, @required String banda, ){
  return Row(
    spacing: 15,
    children: [
      !isArtista ? Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: .circular(12),
            image: DecorationImage(image: NetworkImage(foto), fit: .cover)
        ),
      ):
      Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            shape: .circle,
            image: DecorationImage(image: NetworkImage(foto), fit: .cover)
        ),
      ),
      Column(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          Text(nome,
            textAlign: .start,
            style: TextStyle(
            color: Colors.white,
            fontWeight: .bold,
            fontSize: 15
          ),),
          Text(banda,
            textAlign: .start,
            style: TextStyle(
            color: Colors.white,
              fontSize: 12
          ),)
        ],
      )
    ],
  );
}
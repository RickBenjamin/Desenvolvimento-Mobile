import 'package:flutter/material.dart';

Widget ImagemArtistas(@required String imagem, @required nome){
  return Column(
    children: [
      SizedBox(height: 14,),
      Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: .circle,
          image: DecorationImage(image: NetworkImage(imagem), fit: .cover)
        ),
      ),
      SizedBox(height: 14,),
      Text('${nome}', style: TextStyle(
        color:  Colors.white,
        fontSize: 15,
        fontWeight: .bold
      ),)
    ],
  );
}
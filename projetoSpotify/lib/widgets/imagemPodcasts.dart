import 'package:flutter/material.dart';

Widget ImagemPodcasts(@required String imagem, @required nome){
  return Column(
    children: [
      SizedBox(height: 14,),
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: .circular(12),
            image: DecorationImage(image: NetworkImage(imagem), fit: .cover)
        ),
      ),
      SizedBox(height: 14,),
      Text('${nome}',
          textAlign: .center,
          style: TextStyle(
          color:  Colors.white,
          fontSize: 10,
          fontWeight: .bold
      ),)
    ],
  );
}
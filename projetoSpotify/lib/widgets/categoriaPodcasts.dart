import 'package:flutter/material.dart';

Widget categoriaPodcasts(@required String texto, @required Color cor){
  return Column(
    children: [
      SizedBox(height: 14,),
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: .circular(12),
            color: cor
        ),
        child: Center(
          child: Text(
            texto,
            textAlign: .center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: .bold
          ),
          ),
        )
      ),
    ],
  );
}
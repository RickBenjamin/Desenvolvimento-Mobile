import 'package:flutter/material.dart';
import 'tela2.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15),
            color: Colors.red,
            child: const Text(
              'Pedra, Papel, Tesoura',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey),
            ),
            child: ClipOval(
              child: Image.asset('asset/images/escolha.png'),
            ),
          ),
          const SizedBox(height: 10),
          const Text('Escolha do APP'),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _opcao(context, 'pedra'),
              _opcao(context, 'papel'),
              _opcao(context, 'tesoura'),
            ],
          ),
        ],
      ),
    );
  }
  Widget _opcao(BuildContext context, String escolha) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Tela2(escolhaJogador: escolha),
          ),
        );
      },
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
        ),
        child: ClipOval(
          child: Image.asset('asset/images/$escolha.png'),
        ),
      ),
    );
  }
}
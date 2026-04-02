import 'dart:math';
import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  final String escolhaJogador;

  const Tela2({super.key, required this.escolhaJogador});

  String _sortearApp() {
    final opcoes = ['pedra', 'papel', 'tesoura'];
    final index = Random().nextInt(3); // gera 0, 1 ou 2
    return opcoes[index];
  }

  String _verificarResultado(String jogador, String app) {
    if (jogador == app) return 'empate';

    if ((jogador == 'pedra' && app == 'tesoura') ||
        (jogador == 'papel' && app == 'pedra') ||
        (jogador == 'tesoura' && app == 'papel')) {
      return 'vitória';
    }

    return 'derrota';
  }

  @override
  Widget build(BuildContext context) {
    final escolhaApp = _sortearApp();
    final resultado = _verificarResultado(escolhaJogador, escolhaApp);

    String imagemResultado;
    String textoResultado;

    if (resultado == 'vitória') {
      imagemResultado = 'asset/images/vitória.png';
      textoResultado = 'Você venceu!';
    } else if (resultado == 'derrota') {
      imagemResultado = 'asset/images/perdeu.png';
      textoResultado = 'Você perdeu!';
    } else {
      imagemResultado = 'asset/images/empate.png';
      textoResultado = 'Empate!';
    }

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
          _circulo('asset/images/$escolhaApp.png'),
          const SizedBox(height: 10),
          const Text(
            'Escolha do APP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          _circulo('asset/images/$escolhaJogador.png'),
          const SizedBox(height: 10),
          const Text(
            'Sua Escolha',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Image.asset(
            imagemResultado,
            height: 80,
          ),
          const SizedBox(height: 10),
          Text(
            textoResultado,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            ),
            child: const Text(
              'Jogar novamente',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
  Widget _circulo(String imagem) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.grey),
      ),
      child: ClipOval(
        child: Image.asset(imagem, fit: BoxFit.cover),
      ),
    );
  }
}
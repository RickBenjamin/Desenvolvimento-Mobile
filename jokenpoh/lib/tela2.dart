import 'package:flutter/material.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

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

          _circulo('asset/images/papel.png'),

          const SizedBox(height: 10),

          const Text(
            'Escolha do APP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 30),

          _circulo('asset/images/pedra.png'),

          const SizedBox(height: 10),

          const Text(
            'Sua Escolha',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 30),

          Image.asset(
            'asset/images/perdeu.png',
            height: 80,
          ),

          const SizedBox(height: 10),

          const Text(
            'Você perdeu/venceu',
            style: TextStyle(fontSize: 16),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 10,
              ),
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
        child: Image.asset(
          imagem,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:projetospotify/pages/artistas.dart';
import 'package:projetospotify/pages/buscas.dart';
import 'package:projetospotify/pages/faixa.dart';
import 'package:projetospotify/pages/home.dart';
import 'package:projetospotify/pages/playlist.dart';
import 'package:projetospotify/pages/podcasts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      initialRoute: '/faixa',
      routes: {
        '/home': (context) => Home(),
        '/artistas': (context) => Artistas(),
        '/podcasts': (context) => Podcasts(),
        '/buscas': (context) => Buscas(),
        '/playlist': (context) => Playlist(),
        '/faixa': (context) => Faixa(),

      },
    );
  }
}
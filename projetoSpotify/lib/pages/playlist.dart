import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: Color(0xFF121212),
      body: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // topo com gradiente vermelho, seta de voltar e capa do album
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFB91D1D),
                      Color(0xFF121212),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    Icon(Icons.arrow_back_ios, color: Colors.white),
                    SizedBox(height: 20),
                    Center(
                      child: Container(
                        width: largura * 0.5,
                        height: largura * 0.5,
                        decoration: BoxDecoration(
                          color: Color(0xFFB22222),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Image.asset(
                          'assets/images/album_cover.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '1(Remastered)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage('assets/images/artist_icon.png'),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'The Beatles',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Album · 2000',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                        fontFamily: 'Avenir',
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.favorite_border, color: Colors.white, size: 26),
                            SizedBox(width: 20),
                            Icon(Icons.arrow_circle_down, color: Color(0xFF1ED760), size: 26),
                            SizedBox(width: 20),
                            Icon(Icons.more_horiz, color: Colors.white, size: 26),
                          ],
                        ),
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xFF1ED760),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.pause, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),

              // lista de musicas
              Container(
                color: Color(0xFF121212),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    musicaItem('Love Me Do - Mono / Remastered', 'The Beatles', false),
                    musicaItem('From Me to You - Mono / Remastered', 'The Beatles', true),
                    musicaItem('She Loves You - Mono / Remastered', 'The Beatles', false),
                    musicaItem('I Want To Hold Your Hand - Remastered 2015', 'The Beatles', false),
                    SizedBox(height: 90),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // mini player fixo embaixo
      bottomNavigationBar: Container(
        height: 111,
        decoration: BoxDecoration(
          color: Color(0xFF121212),
          border: Border(top: BorderSide(color: Colors.white12)),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF8B1A1A),
              ),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    color: Color(0xFFB22222),
                    child: Image.asset(
                      'assets/images/album_cover.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'From Me to You - Mono / Remastered',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'BEATSPILL+',
                          style: TextStyle(color: Colors.white70, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.bluetooth, color: Colors.white, size: 18),
                  SizedBox(width: 12),
                  Icon(Icons.pause, color: Colors.white, size: 22),
                ],
              ),
            ),
            Container(
              height: 50,
              color: Color(0xFF181818),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  navItem(Icons.home, 'Home', true),
                  navItem(Icons.search, 'Search', false),
                  navItem(Icons.library_music, 'Your Library', false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget musicaItem(String titulo, String artista, bool tocando) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: TextStyle(
                    color: tocando ? Color(0xFF1ED760) : Colors.white,
                    fontSize: 15,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    tocando
                        ? Icon(Icons.bar_chart, color: Color(0xFF1ED760), size: 14)
                        : Icon(Icons.add_circle_outline, color: Colors.white54, size: 14),
                    SizedBox(width: 6),
                    Text(
                      artista,
                      style: TextStyle(
                        color: tocando ? Color(0xFF1ED760) : Colors.white54,
                        fontSize: 13,
                        fontFamily: 'Avenir',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Icon(Icons.more_vert, color: Colors.white54),
        ],
      ),
    );
  }

  Widget navItem(IconData icone, String label, bool ativo) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icone, color: ativo ? Colors.white : Colors.white54, size: 22),
        SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            color: ativo ? Colors.white : Colors.white54,
            fontSize: 11,
          ),
        ),
      ],



    );
  }
}

import 'package:flutter/material.dart';

class Faixa extends StatefulWidget {
  const Faixa({super.key});

  @override
  State<Faixa> createState() => _FaixaState();
}

class _FaixaState extends State<Faixa> {
  @override
  Widget build(BuildContext context) {
    double largura = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF8B1A1A),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // topo: seta pra baixo, titulo, menu
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 28),
                    Text(
                      '1(Remastered)',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.more_horiz, color: Colors.white, size: 24),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // capa do album
              Container(
                width: largura * 0.78,
                height: largura * 0.78,
                decoration: BoxDecoration(
                  color: Color(0xFFB22222),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/album_cover.png',
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 30),

              // titulo da musica, artista e coracao
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'From Me to You - Mono / Remast',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'The Beatles',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                              fontFamily: 'Avenir',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.favorite_border, color: Colors.white, size: 26),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // barra de progresso
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 3,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 10),
                      ),
                      child: Slider(
                        value: 0.3,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white24,
                        onChanged: (valor) {},
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('0:38', style: TextStyle(color: Colors.white70, fontSize: 12)),
                        Text('-1:18', style: TextStyle(color: Colors.white70, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // botoes de controle
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.shuffle, color: Colors.white, size: 22),
                    Icon(Icons.skip_previous, color: Colors.white, size: 36),
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.pause, color: Colors.black, size: 32),
                    ),
                    Icon(Icons.skip_next, color: Colors.white, size: 36),
                    Icon(Icons.repeat, color: Color(0xFF1ED760), size: 22),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // bluetooth, compartilhar e fila
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.bluetooth, color: Colors.white, size: 18),
                        SizedBox(width: 6),
                        Text(
                          'BEATSPILL+',
                          style: TextStyle(color: Colors.white70, fontSize: 11),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.ios_share, color: Colors.white, size: 20),
                        SizedBox(width: 20),
                        Icon(Icons.queue_music, color: Colors.white, size: 22),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // faixa de letras (Lyrics) -- sem Expanded, altura natural
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                decoration: BoxDecoration(
                  color: Color(0xFFD96B2C),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lyrics',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Text(
                            'MORE',
                            style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.chevron_right, color: Colors.white, size: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
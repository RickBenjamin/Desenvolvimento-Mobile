import 'package:flutter/material.dart';
import 'package:projetospotify/widgets/recentSearch.dart';

class Buscas extends StatefulWidget {
  const Buscas({super.key});

  @override
  State<Buscas> createState() => _BuscasState();
}

class _BuscasState extends State<Buscas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF121212),

      body: Container(
        height: .infinity,
        width: .infinity,
        padding: .only(left: 21),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              spacing: 20,
              children: [
                Container(
                  width: 350,
                  height: 40,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      hint: Text('Search', style: TextStyle(fontWeight: .w600, color: Colors.white),),
                      fillColor: Color(0XFF282828),
                      prefixIconColor: Colors.white
                    ),
                  ),
                ),
                GestureDetector(
                  child: Text('Cancel', style: TextStyle(color: Colors.white, fontWeight: .bold),),
                )
              ],
            ),
            SizedBox(height: 30,),

            Row(
              children: [
                Text('Recent searchs', style: TextStyle(
                  color: Colors.white, fontWeight: .bold
                ),)
              ],
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: .vertical,
              child: Column(
                  children: [
                    RecentSearch(false, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd4MMoGnVd9QXs3eQy3fvY30NSZ4m5JbJfMw&s', 'Shrek', 'Smash Mouth'),
                    RecentSearch(true, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd4MMoGnVd9QXs3eQy3fvY30NSZ4m5JbJfMw&s', 'Shrek', 'Smash Mouth'),
                    RecentSearch(false, 'https://www.google.com/imgres?q=relampago%20mcqueen&imgurl=https%3A%2F%2Fstatic.wikia.nocookie.net%2Fpixar%2Fimages%2Fa%2Fad%2FCars_Lighting_Mcqueen.png%2Frevision%2Flatest%3Fcb%3D20191025194603%26path-prefix%3Dpt-br&imgrefurl=https%3A%2F%2Fpixar.fandom.com%2Fpt-br%2Fwiki%2FRel%25C3%25A2mpago_McQueen&docid=EJCXC62J5x3MDM&tbnid=vKh7dcQ6xvrEHM&vet=12ahUKEwjtz-fmr5GVAxVjgWEGHTtcAZ8QnPAOegQIHBAB..i&w=1000&h=547&hcb=2&ved=2ahUKEwjtz-fmr5GVAxVjgWEGHTtcAZ8QnPAOegQIHBAB', 'Ralampago Macqueen', 'Radiator Springs'),
                    RecentSearch(true, 'https://segredosdomundo.r7.com/personagens-de-desenhos-animados/', 'MC Pica Pau', 'Funk do pica pau'),
                    RecentSearch(false, 'https://g1.globo.com/pop-arte/musica/noticia/2020/09/25/matue-bate-recorde-nas-paradas-com-rap-que-une-influencia-de-chorao-a-experiencias-psicodelicas.ghtml', 'Matue', 'Morte do autotune'),

                  ],
              ),
            )
          ],
        ),
      ),

    );
  }
}

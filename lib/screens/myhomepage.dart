import 'package:aula7/model/profile.dart';
import 'package:aula7/widgets/mycard.dart';
import 'package:aula7/widgets/mydrawer.dart';
import 'package:aula7/widgets/mystory.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
List<Profile> listaDados = [
  Profile(name: "Ronaldinho", image:"https://tse3.mm.bing.net/th/id/OIP.yDrDQTOLrLgvjCJXiSAOAAHaFj?pid=Api&P=0&h=180", like: true),
  Profile(name: "Giovana", image:"", like: false),
  Profile(name: "Hilário", image:"", like: true),
  Profile(name: "Homer", image:"", like: false),
  Profile(name: "Augusta", image:"", like: true)
];

 MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 6"),
        backgroundColor: Colors.greenAccent,
      ),
      drawer: MyDrawer(),
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listaDados.length,
                itemBuilder: (context, item){
                 return MyStory(
                  title: listaDados[item].name, 
                  image: listaDados[item].image,
                 );
                }
                ),
            ),

            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listaDados.length,
                itemBuilder: (context, item){
                 return MyCard(
                  title: listaDados[item].name, 
                  image:listaDados[item].image, 
                  like: listaDados[item].like
                  );
                }
                ),
            )
          ],
        ),
      ),
      );
  }
}
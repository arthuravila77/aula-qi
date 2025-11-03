import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Placeholder(),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.timelapse, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.drag_handle, color: Colors.white),
          ),
        ],
        centerTitle: true,
        title: Text("Aula 5", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: Colors.amber,
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Flutter",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                "lib/assets/papaleguas.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                "lib/assets/perna longa.jpg",
                fit: BoxFit.cover,
                alignment: AlignmentGeometry.topCenter,
              ),
            ),
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset("lib/assets/patolino.jpg", fit: BoxFit.cover),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              ),
            ),
          ],
        ),
      ),
    );
  }
}


MAIN:
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aula 5',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 102, 5, 151),
        ),
      ),
      home: MyHome(),
    );
  }
}

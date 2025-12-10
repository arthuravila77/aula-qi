import 'package:flutter/material.dart';

class CepPage extends StatefulWidget {
  const CepPage({super.key});

  @override
  State<CepPage> createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {
  final TextEditingController _cepController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buscar CEP"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _cepController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("CEP"),
            ),
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(onPressed: (){}, 
          child: Text("Buscar CEP")
          )
        ],
      )
    );
  }
}
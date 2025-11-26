import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/my_button.dart';
import 'package:flutter_application_1/widgets/my_checkbox.dart';
import 'package:flutter_application_1/widgets/my_radio.dart';
import 'package:flutter_application_1/widgets/my_slider.dart';
import 'package:flutter_application_1/widgets/my_switch.dart';
import 'package:flutter_application_1/widgets/my_text_field.dart';
import 'package:flutter_application_1/widgets/mytitle.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Formulário Flutter",
          style: GoogleFonts.uchen(),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              
              Mytitle(title: "Dados Pessoais"),

              SizedBox(
                width: double.infinity,
                child: MyTextfield(title: "Nome"),
              ),

              SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                child: MyTextfield(title: "Data de Nascimento"),
              ),

              SizedBox(height: 15),

              Mytitle(title: "Gênero"),
              
              Row(
                  //mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MyRadio(title: "Masculino"),
                    MyRadio(title: "Feminino")
                  ],
              ),

              SizedBox(height: 15),

              Mytitle(title: "Preferência"),

              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(title: "Música"),
                  MyCheckbox(title: "Esportes"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(title: "Filmes e Séries"),
                  MyCheckbox(title: "Culinária"),
                ],
              ),

              SizedBox(height: 15),
            Mytitle(title: "Escolaridade"),
            SizedBox(height: 15),

            MySlider(),

            SizedBox(height: 15),

            MySwitch(),

            SizedBox(height: 15),

            MyButton(title: "Salvar",
             icon: Icons.save
             )

            ],
          ),
        ),
      ),
    );
  }
}
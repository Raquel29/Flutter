import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() {
    runApp(
      MaterialApp(
        home: Tela(),
  
      ),
   );
}  

class Tela extends StatelessWidget{
@override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Semana de Pratica 1"),
            centerTitle: true,
              backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
            child: Form(
              child: Column(
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        //Hint do campo
                        labelText: "Matrícula",
                        labelStyle: TextStyle(color: Colors.greenAccent),
                       ),
                      textAlign: TextAlign.center, //alinhamento do texto
                        style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 18), //Tamanho da fonte
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        //Hint do campo
                        labelText: "Nome",
                        labelStyle: TextStyle(color: Colors.greenAccent),
                       ),
                      textAlign: TextAlign.center, //alinhamento do texto
                        style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 18), //Tamanho da fonte
                    ),
                   
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: ElevatedButton(
                       child: Text('Cadastrar Aluno'),
                        onPressed: () { Click1(context);},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),

                          textStyle: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                       ),
                      ),
                    
         ],
        ),
      ),
     ),
    );
   }
}  

Click1(BuildContext context) {
   
      showDialog(context: context,
        builder: (context){
          return AlertDialog(
            content: Text("Aluno Cadastrado"),
            actions : <Widget>[
                TextButton(
                   child: Text("OK"),
                      onPressed: () {
                        Navigator.pop(context);
                       
                      }
               )
            ]
          );
      },          
      );
  }
 
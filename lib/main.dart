
import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget{

  double numero1 = 0.0;
  double numero2 = 0.0;

  @override
  Widget build(BuildContext context) {

    //primeiro text field
    TextField primeiroNumeroField = new TextField(
      decoration: InputDecoration(
        labelText: "Primeiro Numero",

      ),
      keyboardType: TextInputType.number,
      onChanged: (valor){
        try{
          numero1 = double.parse(valor);
        } catch(ex){
          numero1 = 0.0;
        }
      },
    );
    //segundo texte field
    TextField segundoNumeroField = new TextField(
      decoration: InputDecoration(
          labelText: "Segundo Numero",

      ),
      keyboardType: TextInputType.number,
      onChanged: (valor){
        try{
          numero2 = double.parse(valor);
        } catch(ex){
          numero2 = 0.0;
        }
      },
    );
    //botao
    RaisedButton calcularButton = new RaisedButton(
      child: new Text("Calcular"),
      onPressed: (){
        double adicao = numero1 + numero2;
        AlertDialog resultadoDialog = new AlertDialog(
          content: new Text("O resultado da soma e \$$adicao")
        );
        showDialog(context: context, child: resultadoDialog);
      },
    );
    Container container = new Container(
      padding: EdgeInsets.all(20.0),
      child: new Column(
        children: <Widget>[primeiroNumeroField, segundoNumeroField, calcularButton]
      ),
    );

    AppBar appBar = new AppBar(
      title: new Text("Calculadora Flutter"),
    );
    Scaffold scaffold = new Scaffold(
      appBar: appBar,
      body: container,
    );
    return scaffold;
  }
}

void main(){
  runApp(new MaterialApp(
    title: "Calculadora Flutter",
    home: new Calculadora(),
  ));
}
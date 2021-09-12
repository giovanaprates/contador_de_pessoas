import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de pessoas", //parametro title
    home: Home()
  )
  );
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0; //o <_> é para indicar que não quer que a variárvel seja acessada de fora, apenas dentro da classe
  String _infoText = "Pode entrar!";

  void _changePeople(int delta){
    setState(() { //Executa o código que está aqui dentro e logo em seguida manda atualizar a tela
      _people += delta;

      if(_people < 0){
        _infoText = "É o quê?";
      }
      else if(_people < 10){
        _infoText = "Pode entrar!";
      }
      else{
        _infoText = "Lotado!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_people",
              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("+1", style: TextStyle(fontSize: 40.0, color: Colors.white)),
                    onPressed: (){
                      /*debugPrint("+1");*/
                      /*_people = _people++;*/
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text("-1", style: TextStyle(fontSize: 40.0, color: Colors.white)),
                    onPressed: (){
                      /*debugPrint("-1");*/
                      /*_people = _people--;*/
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(color: Colors.purple, fontStyle: FontStyle.italic, fontSize: 30.0),
            )
          ],
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de pessoas", //parametro title
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Pessoas: 0",
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Text("+1", style: TextStyle(fontSize: 40.0, color: Colors.white)),
              onPressed: (){},
            ),
            FlatButton(
              child: Text("-1", style: TextStyle(fontSize: 40.0, color: Colors.white)),
              onPressed: (){},
            ),
          ],
        ),
        Text(
          "Pode entrar!",
          style: TextStyle(color: Colors.purple, fontStyle: FontStyle.italic, fontSize: 30.0),
        )
      ],
    )
  )
  );
}
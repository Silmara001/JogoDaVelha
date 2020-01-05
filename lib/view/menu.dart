import 'package:flutter/material.dart';
import 'package:jv/view/jogo.dart';

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jogo da Velha"),
        ),
        body: menu(context),
    );
  }
}

Widget menu(BuildContext context){
  return Center(
    child: Padding( 
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Jogar"),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Jogo()), 
              );
            },
          ),
          RaisedButton(
            child: Text("Sobre"),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => null),
              );
            },
          ),
        ],
      ),
    ),
  );
}
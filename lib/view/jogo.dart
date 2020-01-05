import 'package:flutter/material.dart';
import 'package:jv/controller/defines.dart';
import 'package:jv/controller/game.dart';

Define define = new Define();

class Jogo extends StatefulWidget {
  @override
  JogoState createState() => JogoState();
}

class JogoState extends State<Jogo> {
  
  void atualizar(int n){
    if(define.ganhou == ""){
      setState(() {
        setBtn(define, n); 
      });
    }   
  }

  void backPage(BuildContext context){
    start(define);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogo - ${define.getModo()}"),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () => backPage(context),
        )
      ),
      bottomNavigationBar: BottomAppBar(
        child: Text("Status: ${define.status}"),
      ),
      body: Center(
        child: Padding(
          padding:EdgeInsets.fromLTRB(10, 100, 10, 50),
            child: Row(
              children: <Widget>[
                Padding(
                  padding:EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        color: Colors.lightBlue[200],
                        child: Text("${define.celulaSimbolo[1]}"), 
                        onPressed: (){atualizar(1);},
                      ),

                      FlatButton(
                        color: Colors.lightBlue[200],
                        child: Text("${define.celulaSimbolo[4]}"),
                        onPressed: (){atualizar(4);},
                      ),

                      FlatButton(
                        color: Colors.lightBlue[200],
                        child: Text("${define.celulaSimbolo[7]}"),
                        onPressed: (){atualizar(7);},
                      ),
                    ],
                  ),
                ),
                
                Padding(
                  padding:EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        color: Colors.lightBlue[200],
                        child: Text("${define.celulaSimbolo[2]}"),
                        onPressed: (){atualizar(2);},
                      ),

                      FlatButton(                      
                        color: Colors.lightBlue[200],
                        child: Text("${define.celulaSimbolo[5]}"),
                        onPressed: (){atualizar(5);},
                      ),

                      FlatButton( 
                        color: Colors.lightBlue[200],
                        child: Text("${define.celulaSimbolo[8]}"),
                        onPressed: (){atualizar(8);},
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding:EdgeInsets.all(5),
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        color: Colors.lightBlue[200],
                        child: Text("${define.celulaSimbolo[3]}"),
                        onPressed: (){atualizar(3);},
                      ),

                      FlatButton(
                        color: Colors.lightBlue[200],
                        child: Text("${define.celulaSimbolo[6]}"),
                        onPressed: (){atualizar(6);},
                      ),

                      FlatButton( 
                        color: Colors.lightBlue[200],
                        child: Text("${define.celulaSimbolo[9]}"),
                        onPressed: (){atualizar(9);},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}

class Define{
  final List<String> modo = ["HxH", "HxC"];
  
  //String selecaoModo = modo[0];
  String status = "";
  String ganhou = "";
  final List<String> jogadorGanhador = ["X", "O", "EMPATE"];

  //jogador 1 index: 0; jogador 2 index: 1
  final List<String> jogador = ["X", "O"];  
  String simbolo = "O";

  //mapeamento dos botoes do tabuleiro. considerando apartir do index 1.
  List<bool> btn = [true,false, false, false, false, false, false, false, false, false];
  List<String> celulaSimbolo = ["F","", "", "", "", "", "", "", "", ""];

  String alternarSimbolo(){
    if(simbolo == jogador[0]){
      simbolo = jogador[1];
    }else{
      simbolo = jogador[0];
    }
    return simbolo;
  }

  String getModo(){
    String m = modo[0];
    return m;
  } 

  String getSimbolo(int n){
    String simbolo = celulaSimbolo[n];
    return simbolo;
  }

}

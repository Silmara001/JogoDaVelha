import 'package:jv/controller/defines.dart';

void start(Define define){
  define.btn[1] = false; define.celulaSimbolo[1] = "";
  define.btn[2] = false; define.celulaSimbolo[2] = "";
  define.btn[3] = false; define.celulaSimbolo[3] = "";
  define.btn[4] = false; define.celulaSimbolo[4] = "";
  define.btn[5] = false; define.celulaSimbolo[5] = "";
  define.btn[6] = false; define.celulaSimbolo[6] = "";
  define.btn[7] = false; define.celulaSimbolo[7] = "";
  define.btn[8] = false; define.celulaSimbolo[8] = "";
  define.btn[9] = false; define.celulaSimbolo[9] = "";
  define.status = "";
  define.ganhou = "";
}

void setBtn(Define define,int nBtn){
  if(define.btn[nBtn] != true){
    define.btn[nBtn] = true;
    define.celulaSimbolo[nBtn] = define.alternarSimbolo();
    aplicarRegras(define);
  }
} 

void verificarHorizontal(Define define){
  if( (define.btn[1] == true) && (define.btn[2] == true) && (define.btn[3] == true)){
    if( (define.celulaSimbolo[1] == define.jogador[0]) && (define.celulaSimbolo[2] == define.jogador[0]) && (define.celulaSimbolo[3] == define.jogador[0]) ){
      define.status = "Jogador ${define.jogador[0]} GANHOU";
      define.ganhou = define.jogadorGanhador[0];
    }else if( (define.celulaSimbolo[1] == define.jogador[1]) && (define.celulaSimbolo[2] == define.jogador[1]) && (define.celulaSimbolo[3] == define.jogador[1]) ){
      define.status = "Jogador ${define.jogador[1]} GANHOU";
      define.ganhou = define.jogadorGanhador[1];
    }
  }

  if( (define.btn[4] == true) && (define.btn[5] == true) && (define.btn[6] == true)){
    if( (define.celulaSimbolo[4] == define.jogador[0]) && (define.celulaSimbolo[5] == define.jogador[0]) && (define.celulaSimbolo[6] == define.jogador[0]) ){
      define.status = "Jogador ${define.jogador[0]} GANHOU";
      define.ganhou = define.jogadorGanhador[0];
    }else if( (define.celulaSimbolo[4] == define.jogador[1]) && (define.celulaSimbolo[5] == define.jogador[1]) && (define.celulaSimbolo[6] == define.jogador[1]) ){
      define.status = "Jogador ${define.jogador[1]} GANHOU";
      define.ganhou = define.jogadorGanhador[1];
    }
  }
  if( (define.btn[7] == true) && (define.btn[8] == true) && (define.btn[9] == true)){
    if( (define.celulaSimbolo[7] == define.jogador[0]) && (define.celulaSimbolo[8] == define.jogador[0]) && (define.celulaSimbolo[9] == define.jogador[0]) ){
      define.status = "Jogador ${define.jogador[0]} GANHOU";
      define.ganhou = define.jogadorGanhador[0];
    }else if( (define.celulaSimbolo[7] == define.jogador[1]) && (define.celulaSimbolo[8] == define.jogador[1]) && (define.celulaSimbolo[9] == define.jogador[1]) ){
      define.status = "Jogador ${define.jogador[1]} GANHOU";
      define.ganhou = define.jogadorGanhador[1];
    }
  }
}

void verificarVertical(Define define){
  if( (define.btn[1] == true) && (define.btn[4] == true) && (define.btn[7] == true)){
    if( (define.celulaSimbolo[1] == define.jogador[0]) && (define.celulaSimbolo[4] == define.jogador[0]) && (define.celulaSimbolo[7] == define.jogador[0]) ){
      define.status = "Jogador ${define.jogador[0]} GANHOU";
      define.ganhou = define.jogadorGanhador[0];
    }else if( (define.celulaSimbolo[1] == define.jogador[1]) && (define.celulaSimbolo[4] == define.jogador[1]) && (define.celulaSimbolo[7] == define.jogador[1]) ){
      define.status = "Jogador ${define.jogador[1]} GANHOU";
      define.ganhou = define.jogadorGanhador[1];
    }
  }

  if( (define.btn[2] == true) && (define.btn[5] == true) && (define.btn[8] == true)){
    if( (define.celulaSimbolo[2] == define.jogador[0]) && (define.celulaSimbolo[5] == define.jogador[0]) && (define.celulaSimbolo[8] == define.jogador[0]) ){
      define.status = "Jogador ${define.jogador[0]} GANHOU";
      define.ganhou = define.jogadorGanhador[0];
    }else if( (define.celulaSimbolo[2] == define.jogador[1]) && (define.celulaSimbolo[5] == define.jogador[1]) && (define.celulaSimbolo[8] == define.jogador[1]) ){
      define.status = "Jogador ${define.jogador[1]} GANHOU";
      define.ganhou = define.jogadorGanhador[1];
    }
  }

  if( (define.btn[3] == true) && (define.btn[6] == true) && (define.btn[9] == true)){
    if( (define.celulaSimbolo[3] == define.jogador[0]) && (define.celulaSimbolo[6] == define.jogador[0]) && (define.celulaSimbolo[9] == define.jogador[0]) ){
      define.status = "Jogador ${define.jogador[0]} GANHOU";
      define.ganhou = define.jogadorGanhador[0];
    }else if( (define.celulaSimbolo[3] == define.jogador[1]) && (define.celulaSimbolo[6] == define.jogador[1]) && (define.celulaSimbolo[9] == define.jogador[1]) ){
      define.status = "Jogador ${define.jogador[1]} GANHOU";
      define.ganhou = define.jogadorGanhador[1];
    }
  }
}

void verificarDiagonal(Define define){
  if( (define.btn[1] == true) && (define.btn[5] == true) && (define.btn[9] == true)){
    if( (define.celulaSimbolo[1] == define.jogador[0]) && (define.celulaSimbolo[5] == define.jogador[0]) && (define.celulaSimbolo[9] == define.jogador[0]) ){
      define.status = "Jogador ${define.jogador[0]} GANHOU";
      define.ganhou = define.jogadorGanhador[0];
    }else if( (define.celulaSimbolo[1] == define.jogador[1]) && (define.celulaSimbolo[5] == define.jogador[1]) && (define.celulaSimbolo[9] == define.jogador[1]) ){
      define.status = "Jogador ${define.jogador[1]} GANHOU";
      define.ganhou = define.jogadorGanhador[1];
    }
  }

  if( (define.btn[3] == true) && (define.btn[5] == true) && (define.btn[7] == true)){
    if( (define.celulaSimbolo[3] == define.jogador[0]) && (define.celulaSimbolo[5] == define.jogador[0]) && (define.celulaSimbolo[7] == define.jogador[0]) ){
      define.status = "Jogador ${define.jogador[0]} GANHOU";
      define.ganhou = define.jogadorGanhador[0];
    }else if( (define.celulaSimbolo[3] == define.jogador[1]) && (define.celulaSimbolo[5] == define.jogador[1]) && (define.celulaSimbolo[7] == define.jogador[1]) ){
      define.status = "Jogador ${define.jogador[1]} GANHOU";
      define.ganhou = define.jogadorGanhador[1];
    }
  }
}

bool verificarEmpate(Define define){
  int i = 1; 
  bool sentinela = true;

  while( (sentinela == true) && (i <= 9) ){
    if(define.btn[i] == false) {
      sentinela = false;
    }
    i++;
  }

  return sentinela;
}

void aplicarRegras(Define define){
  if(define.ganhou == ""){
    if( verificarEmpate(define) ){
      define.ganhou = define.jogadorGanhador[2];
      define.status = define.jogadorGanhador[2];
    }else{
      verificarHorizontal(define);
      verificarVertical(define);
      verificarDiagonal(define);
    }
  }  
}
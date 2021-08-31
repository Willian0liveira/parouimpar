import 'package:flutter/material.dart';



class PlayerPar{
  String playerParName = "";
  int playerParPoint = 0;
  String playerParResult = "";

  void playerParWin(){
    if(playerParPoint==2 || playerParPoint==4 || playerParPoint==6
        || playerParPoint==8 || playerParPoint==10){
      playerParResult = " Oba, Par ganhou !";
    }
  }



}


class PlayerImpar{
  String playerImparName = "";
  int playerImparPoint = 0;
  String playerImparResult = "";

  void playerImparWin(){
    if(playerImparPoint==2 || playerImparPoint==4 || playerImparPoint==6
        || playerImparPoint==8 || playerImparPoint==10){
      playerImparResult = " Oba, Impar ganhou !";
    }
  }



}


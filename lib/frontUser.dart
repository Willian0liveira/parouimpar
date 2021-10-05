import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parouimpar/logicGame.dart';
import 'package:parouimpar/pagePlayer.dart';
import 'package:parouimpar/resultGallery.dart';


class Principal extends StatefulWidget {


  String jogadorUm = "";
  String jogadorDois = "";

  @override
  _PrincipalState createState() => _PrincipalState();

  Principal(this.jogadorUm, this.jogadorDois);
}


class _PrincipalState extends State<Principal> {




  PlayerImpar playerImpar = PlayerImpar();
  dynamic pointResult = " ";
  String imparPar = "Par ou impar ?";
  int pointPar = 0;
  int pointImpar = 0;
  bool parImparSelected= true;
  bool imparParSelected = false;

  @override
  Widget build(BuildContext context) {


    void mudaResultado(){
      String jogadorUmVence = widget.jogadorUm;
      String jogadorDoisVence = widget.jogadorDois;
      setState(() {
        pointResult = Random().nextInt(9)+1;
        if(pointResult==2 && parImparSelected==true||pointResult==4 && parImparSelected==true||pointResult==6 && parImparSelected==true||pointResult==8 && parImparSelected==true||pointResult==10 && parImparSelected==true){
          pointPar++;
          imparPar = "Par";
        }else{
          pointImpar++;
          imparPar = "Impar";
        }
      });



      if(pointPar==10){
        pointPar=0;
        pointImpar =0;
        pointResult = 0;
        imparPar="Par ou Impar ?";
        showDialog(barrierColor: Colors.redAccent,barrierDismissible: false,context: context, builder: (context)=>AlertDialog(
          backgroundColor: Colors.redAccent,
          elevation: 0,
          content: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.redAccent,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 200),
                  width: 400,
                  height: 100,
                  child: Image.asset('imagens/trofeu.png',width: 500,height: 500,fit: BoxFit.contain,),
                ),
                Text("Vencedor !",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),),
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child:  Text(jogadorUmVence,style: TextStyle(fontSize: 55,color: Colors.yellowAccent,fontWeight: FontWeight.bold),),
                ),


              ],
            ),
          ),

        ));
      }else if(pointImpar==10){
        pointImpar=0;
        pointPar = 0;
        pointResult =0;
        imparPar = "Par ou Impar ?";
        showDialog(barrierColor: Colors.redAccent,barrierDismissible: false,context: context, builder: (context)=>AlertDialog(
          backgroundColor: Colors.redAccent,
          elevation: 0,
          content: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.redAccent,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 200),
                  width: 400,
                  height: 100,
                  child: Image.asset('imagens/trofeu.png'),
                ),
                Text("Vencedor !",style: TextStyle(fontSize: 35,color: Colors.white,fontWeight: FontWeight.bold),),
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child:  Text(jogadorDoisVence,style: TextStyle(fontSize: 55,color: Colors.yellowAccent,fontWeight: FontWeight.bold,),),
                ),

              ],
            ),
          ),

        ));
      }
    }



    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: 500,
                  height: 200,
                  child: CircleAvatar(backgroundColor: Colors.white,child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(left: 5,top: 5),
                        child: Text(pointResult.toString(),style: TextStyle(color: Colors.redAccent,fontSize:120,fontWeight: FontWeight.bold),),
                      ),

                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(left: 5,bottom: 30),
                        child: Text(imparPar.toString(),style: TextStyle(color: Colors.redAccent,fontSize: 20,fontWeight: FontWeight.bold),),

                      ),

                    ],
                  ),




                  ),
                ),
              ),






              Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 20,left: 10),
                child: Text("Pontos",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),


              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 1),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150,
                    height: 200,
                    padding: EdgeInsets.only(top: 5),
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text(widget.jogadorUm,style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child:Text(pointPar.toString(),style: TextStyle(fontSize: 80),),
                        ),
                        Switch(
                          onChanged: (value){
                            setState(() {
                              parImparSelected = value;
                            });
                          },
                          value: parImparSelected,
                        ),


                      ],
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.only(left: 150),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 150,
                    height: 200,
                    padding: EdgeInsets.only(top: 5),
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        Text(widget.jogadorDois,style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        ),

                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child:Text(pointImpar.toString(),style: TextStyle(fontSize: 80),),
                        ),

                        Switch(
                          onChanged: (value){
                            setState(() {
                              imparParSelected = value;
                            });
                          },
                          value: imparParSelected,
                        ),


                      ],
                    ),
                  ),
                ],

              ),



                Container(
                margin: EdgeInsets.only(top: 30,left: 16,right:16),
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.yellowAccent,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                  child: Text("Aperte Para Jogar",style: TextStyle(fontSize: 16,color: Colors.black),),
                  onPressed: (){
                   mudaResultado();
                  },
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 30,left: 16,right:16),
                width: 100,
                height: 80,
                child: FloatingActionButton(
                  child: Image.asset('imagens/trofeu2.png',color: Colors.white,height: 40,),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>ResultGallery()));
                  },
                ),
              ),



            ],
          ),
      ),

    );
  }
}

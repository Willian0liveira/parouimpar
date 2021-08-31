import 'package:flutter/material.dart';
import 'package:parouimpar/frontUser.dart';


class PagePlayer extends StatefulWidget {


  @override
  _PagePlayerState createState() => _PagePlayerState();
}

class _PagePlayerState extends State<PagePlayer> {
  String namePlayerOne="";
  String namePlayerTwo="";
  TextEditingController playerOne = TextEditingController();
  TextEditingController playerTwo = TextEditingController();



  void confirmPlayers(){
    if(playerOne.text.isNotEmpty && playerTwo.text.isNotEmpty){
      setState(() {
        String nomeUm = playerOne.text;
        String nomeDois = playerTwo.text;
        Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Principal(
            nomeUm,nomeDois
        )));
      });
    }




  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [

              Container(
                margin: EdgeInsets.only(top: 200,left: 16,right: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width,
                height: 175,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Jogador 1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      alignment: Alignment.topCenter,
                      child:
                        Text(playerOne.text,style: TextStyle(fontSize:50,fontWeight: FontWeight.bold),),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                      ),
                      padding: EdgeInsets.only(left: 16,right: 16),
                      margin: EdgeInsets.only(top: 110),
                    child: TextFormField(
                      controller: playerOne,
                      textInputAction: TextInputAction.next,
                      style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelStyle: TextStyle(color: Colors.white),
                        labelText: 'Digite seu nome Jogador 1',
                      ) ,
                    ),


                    ),

                  ],
                ),
              ),





              Container(
                margin: EdgeInsets.only(top: 40,left: 16,right: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: MediaQuery.of(context).size.width,
                height: 175,
                child: Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Jogador 2",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      alignment: Alignment.topCenter,
                      child:
                      Text(playerTwo.text,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
                    ),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                      ),
                      padding: EdgeInsets.only(left: 16,right: 16),
                      margin: EdgeInsets.only(top: 110),
                      alignment: Alignment.topCenter,
                      child: TextFormField(
                        controller: playerTwo,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle: TextStyle(color: Colors.white),
                          labelText: 'Digite seu nome Jogador 2',
                        ) ,
                      ),


                    ),

                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 16),
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text("Continuar",style: TextStyle(fontSize: 26),),
                  onPressed: (){
                   confirmPlayers();
                  },
                ),
              ),














            ],

          ),




      ),


    );
  }
}


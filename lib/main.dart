import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parouimpar/frontUser.dart';
import 'package:parouimpar/pagePlayer.dart';


void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.redAccent,
    systemNavigationBarIconBrightness: Brightness.light,
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PagePlayer(),
  ));

}
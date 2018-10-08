import 'package:flutter/material.dart';
import 'home_page_body.dart';

class HomePage extends StatelessWidget{
  Widget build(BuildContext context){
    return new Scaffold(
      body: Column(
        children: <Widget>[
          GradientAppBar("treva"),
          HomePageBody(),
        ],
      ),
    );
  }
}

class GradientAppBar extends StatelessWidget{

  final String title;
  final double barHeight = 66.0;
  

  GradientAppBar(this.title);

  Widget build(BuildContext context){

    final double statusBarHeight = MediaQuery
      .of(context)
      .padding
      .top;

    return Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height:statusBarHeight + barHeight,
      decoration:BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            const Color(0xFF3366FF),
            const Color(0xFF00CCFF)
          ],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(1.0, 0.0),
          stops: [0.0, 0.5],
          tileMode: TileMode.clamp
        ),
      ),
      child:Center(
        child:Text(
          title,
          style: TextStyle(
            color:Colors.white,
            fontFamily:'Poppins',
            fontWeight : FontWeight.w600,
            fontSize: 36.0
          )
          )
      )
    );
  }
}
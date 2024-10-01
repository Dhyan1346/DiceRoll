import 'package:flutter/material.dart';
import 'dart:math';
final radommizer=Random();

class Rolldicepage extends StatefulWidget{
  const Rolldicepage({super.key});

  @override
  State<Rolldicepage> createState() => _RolldicepageState();
}

class _RolldicepageState extends State<Rolldicepage> {
  var currntdiceroll=2;
  void rolldice(){


    setState(() {
      currntdiceroll=Random().nextInt(6)+1;

    });


  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("Roll Dice",style: TextStyle(color: Colors.white),),
       centerTitle: true,
       backgroundColor: Colors.blueAccent,
     ),
     body:
     Container(decoration: BoxDecoration(
       gradient: LinearGradient(colors: [
         Color(0xff4e54c8),Color(0xff8f94fb)
       ],)
     ),
       child: Center(
         child: Column(mainAxisSize: MainAxisSize.min,

           children: [

             InkWell(
               onTap: rolldice,
                 child: Image.asset('assets/Dice-$currntdiceroll.png', height: 200,width: 200)),
             const SizedBox(
               height: 20,
             ),





           ],
         ),
       ),
     ),


   );
  }
}
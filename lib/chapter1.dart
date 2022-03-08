// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nuzazie/consts.dart';

class Content1Page extends StatefulWidget {

  const Content1Page({ Key? key, }) : super(key: key);

  @override
  State<Content1Page> createState() => _Content1PageState();
}

class _Content1PageState extends State<Content1Page> {
  get padding => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("መግቢያ"),),
          backgroundColor: Colors.black,
        ),

    body: SingleChildScrollView(
      child: Container(
        color: Colors.amber[100],
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              
              const Padding(
                padding: EdgeInsets.only(top:80,bottom: 300),
                child: Center(child: Text('$ch1',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),)),
              ),
              const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: Text('$ch1content'),
              ),
              const Padding(
                padding: EdgeInsets.only(top:450,bottom: 20),
                //child: Center(child: Text('$ch1',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),)),
              ),
              const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: Text('$content'),
              ),
              const Padding(
                padding: EdgeInsets.only(top:450,bottom: 20),
                child: Center(child: Text('$cha1',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),)),
              ),
              const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: Text('$cha1content', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    ),
     );
  }

}
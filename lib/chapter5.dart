// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:nuzazie/consts.dart';

class Content5Page extends StatefulWidget {

  const Content5Page({ Key? key, }) : super(key: key);

  @override
  State<Content5Page> createState() => _Content5PageState();
}

class _Content5PageState extends State<Content5Page> {
  get padding => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(child: Text("ማጠቃለያና መውጫ"),),
                  ),

    body: SingleChildScrollView(
      child: Container(
        color: Colors.amber[100],
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha5, style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
             ),
             Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha5cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             Padding(
                padding: EdgeInsets.only(top:40,bottom: 20),
                child: Center(child: Text("$cha51",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha51cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha5last, style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal,fontStyle: FontStyle.italic),),
             ),
            ],
          ),
        ),
      ),
    ),
     );
  }

}
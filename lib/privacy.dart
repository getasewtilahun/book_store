import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:url_launcher/url_launcher.dart';
class PrivacyPage extends StatelessWidget {
   PrivacyPage({ Key? key }) : super(key: key);

var defaultText= TextStyle(color: Colors.black);
var linkText= TextStyle(color: Colors.blue);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("privacy policy"),),
        backgroundColor: Colors.black,
      ),
      body:  SingleChildScrollView(
        child: Container(
          color: Colors.amber[100],
           width: MediaQuery.of(context).size.width ,
           child: Padding(
             padding: EdgeInsets.only(top: 10,bottom: 400),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children:  <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 80, bottom: 80),
                    child: RichText(
                      text: TextSpan(
                        children: [
                            TextSpan(
                            style: defaultText,
                            text: "Privacy Policy\n\n  built the Free Books app as an Ad Supported app. This SERVICE is provided by at no cost and is intended for use as is.\n\nTo learn more"
                          ),
                          TextSpan(
                            style: linkText,
                             text: "Click here",
                             recognizer: TapGestureRecognizer().. onTap = ()async{
                               var url = "https://sites.google.com/view/freebooksprivacy";
                               if(await canLaunch(url)){
                                 await launch(url);
                               }else{
                                 throw "can not load url";
                               }
                             }
                          )
                        ]
                         )
                       ),
                    

                 ),
               ],
               ),
        ),
        ),
    ),
    );
  }
}
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
   AboutPage({ Key? key }) : super(key: key);

  var defaultText= TextStyle(color: Colors.black);
var linkText= TextStyle(color: Colors.blue);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("About Us"),),
        backgroundColor: Colors.black,
      ),
      body:  SingleChildScrollView(
        child: Container(
          color: Colors.amber[100],
           width: MediaQuery.of(context).size.width ,
           height: MediaQuery.of(context).size.height-AppBar().preferredSize.height,
           child: Padding(
             padding: EdgeInsets.only(top: 10),
            //  child: Column(
            //    crossAxisAlignment: CrossAxisAlignment.start,
            //    children: const <Widget>[
            //       Padding(
            //         padding: EdgeInsets.only(top: 80, bottom: 80),
            //         child: Center(child: Text('Developed by: Getasew Tilahun\n gmail: getasewbekahegn@gmail.com'),),

            //      )
            //    ],
            //    )
            child: RichText(
                      text: TextSpan(
                        children: [

                          TextSpan(
                            style: defaultText,
                            text: "Developed by : Getasew Tilahun\n\n gmail: getasewbekahegn@gmail.com\n\n OnTelegram: "
                          ),
                          TextSpan(
                            style: linkText,
                             text: "Telegram",
                             recognizer: TapGestureRecognizer().. onTap = ()async{
                               var url = "https://t.me/getasew_tilahun";
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
        )
        ),
    ),
    );
  }
}
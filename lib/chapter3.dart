// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nuzazie/consts.dart';

class Content3Page extends StatefulWidget {

  const Content3Page({ Key? key, }) : super(key: key);

  @override
  State<Content3Page> createState() => _Content3PageState();
}

class _Content3PageState extends State<Content3Page> {
  get padding => null;

  BannerAd? bannerAd;
  bool isLoaded = false;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: "ca-app-pub-5388149679595091/4830702429",
      listener: BannerAdListener(onAdLoaded: (ad) {
        setState(() {
          isLoaded = true;
        });
        print("Banner ad loaded");
      }, onAdFailedToLoad: (ad, error) {
        ad.dispose();
      }),
      request: AdRequest(),
    );
    bannerAd!.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("ክፍል ሁለት"),),
          backgroundColor: Colors.black,
        ),

  bottomSheet: SizedBox(
        height: isLoaded ? 60 : 0,
        child: AdWidget(
          ad: bannerAd!,
        ),
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
              Padding(
                padding: EdgeInsets.only(top:20,bottom: 20),
                child: Center(child: Text("$cha3",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),)),
              ),
            Padding(
                padding: EdgeInsets.only(top:20,bottom: 20),
                child: Center(child: Text("$cha13",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)),
              ),
             Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha23, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
             ),
             Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha33, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             Padding(
                padding: EdgeInsets.only(top:40,bottom: 20),
                child: Center(child: Text("$cha34",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)),
              ),
              Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha34cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             Padding(
                padding: EdgeInsets.only(top:40,bottom: 20),
                child: Center(child: Text("$cha35",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)),
              ),
               Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha35cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
              Padding(
                padding: EdgeInsets.only(top:40,bottom: 20),
                child: Center(child: Text("$cha36",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
              ),
               Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha36cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             )
            ],
          ),
        ),
      ),
    ),
     );
  }

}
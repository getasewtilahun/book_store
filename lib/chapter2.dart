// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nuzazie/consts.dart';

class Content2Page extends StatefulWidget {

  const Content2Page({ Key? key, }) : super(key: key);

  @override
  State<Content2Page> createState() => _Content2PageState();
}

class _Content2PageState extends State<Content2Page> {
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
          backgroundColor: Colors.black,
          title: const Center(child: Text("ክፍል አንድ"),),
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
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top:20,bottom: 20),
                child: Center(child: Text("$ch2",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),)),
              ),
            const Padding(
                padding: EdgeInsets.only(top:20,bottom: 20),
                child: Center(child: Text("$cha2",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),)),
              ),
             const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha12, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
             ),
              const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha22, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             const Padding(
                padding: EdgeInsets.only(top:40,bottom: 20),
                child: Center(child: Text("$cha32",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
              ),
               const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha32content, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha32cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             const Padding(
                padding: EdgeInsets.only(top:40,bottom: 20),
                child: Center(child: Text("$cha42",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
              ),
              const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha42cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             const Padding(
                padding: EdgeInsets.only(top:40,bottom: 20),
                child: Center(child: Text("$cha52",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
              ),
              const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha52cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
            ],
          ),
        ),
        
      ),
    ),
     );
  }

}
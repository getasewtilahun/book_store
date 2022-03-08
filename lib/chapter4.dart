// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:nuzazie/consts.dart';

class Content4Page extends StatefulWidget {

  const Content4Page({ Key? key, }) : super(key: key);

  @override
  State<Content4Page> createState() => _Content4PageState();
}

class _Content4PageState extends State<Content4Page> {
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
          title: const Center(child: Text("ክፍል ሦስት"),),
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
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top:20,bottom: 20),
                child: Center(child: Text("$cha4",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),)),
              ),
            const Padding(
                padding: EdgeInsets.only(top:20,bottom: 20),
                child: Center(child: Text("$cha41",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w700),)),
              ),
              const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha43, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
             ),
             const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha43cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             const Padding(
                padding: EdgeInsets.only(top:40,bottom: 20),
                child: Center(child: Text("$cha44",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)),
              ),
              const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha44cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha441, style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),),
             ),
             const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha44cont1, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             const Padding(
                padding: EdgeInsets.only(top:40,bottom: 20),
                child: Center(child: Text("$cha45",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)),
              ),
              const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha45cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             const Padding(
                padding: EdgeInsets.only(top:40,bottom: 20),
                child: Center(child: Text("$cha46",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),)),
              ),
              const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha46cont, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
             const Padding(
                padding: EdgeInsets.only(top:40,bottom: 20),
                child: Center(child: Text("$cha461",style: TextStyle(fontSize: 16,fontWeight: FontWeight.normal),)),
              ),
              const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha461cont, style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),),
             ),
             const Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: 
              Text(cha46cont1, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
             ),
            ],
          ),
        ),
      ),
    ),
     );
  }

}
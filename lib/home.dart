// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:nuzazie/about.dart';
import 'package:nuzazie/privacy.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'chapter1.dart';
import 'package:flutter/material.dart';

import 'chapter2.dart';
import 'chapter3.dart';
import 'chapter4.dart';
import 'chapter5.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BannerAd? bannerAd;
  bool isLoaded = false;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: "ca-app-pub-5388149679595091/7490802584",
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
        title: const Center(
          child: Text("ኑዛዜ - መጽሔት"),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //   const UserAccountsDrawerHeader(
            //     decoration: BoxDecoration(
            //       color: Colors.black,
            //     ),
            //     currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/en/thumb/e/e2/IMG_Academy_Logo.svg/1200px-IMG_Academy_Logo.svg.png"),),
            //     accountName: Text("Nuzazie",style: TextStyle(color:Colors.white),),
            //     accountEmail: Text("zeteklehaymanot12@gmail.com",style: TextStyle(color:Colors.white),)
            //     ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/pic1.png"),
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                ],
              ),
            ),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("About Us"),
                //trailing: Icon(Icons.person),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AboutPage()));
                }),

            ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text("privacy policy"),
                //trailing: Icon(Icons.privacy_tip),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PrivacyPage()));
                })
          ],
        ),
      ),
      bottomSheet: SizedBox(
        height: isLoaded ? 60 : 0,
        child: AdWidget(
          ad: bannerAd!,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Content1Page()));
                  },
                  child: Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width - 40,
                    height: 200,
                    child: Card(
                        color: Colors.amber[100],
                        child: const Center(
                          child: Text(
                            "መግቢያ",
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Content2Page()));
                  },
                  child: Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width - 40,
                    height: 200,
                    child: Card(
                        color: Colors.amber[100],
                        child: Center(
                            child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "ክፍል ፩ ",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                            ),
                            const Text(
                              "+++ እንደ  ቤተክርስቲያን +++",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Text(
                              "+የቤተክርስቲያን  ዓላማ  እና  ኃላፊነት+",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              "+የክርስቲያን  ዓላማና  ኃላፊነት+",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              "+ቤተክርስቲያንን  ማስቀጠል+",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            )
                          ],
                        ))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Content3Page()));
                  },
                  child: Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width - 40,
                    height: 200,
                    child: Card(
                        color: Colors.amber[100],
                        child: Center(
                            child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "ክፍል ፪ ",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                            ),
                            Text(
                              "+++እንደ  ከፍተኛ  ትምህርት  ተቋማት+++",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            Text(
                              "+የከፍተኛ  ትምህርት  ተቋማት  ዓላማና  ኃላፊነት+",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              "+የተማሪዎች  ዓላማ  እና  ኃላፊነት+",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              "+ሥርዓተ  ትምህርትን  ማስቀጠል+",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            )
                          ],
                        ))),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Content4Page()));
                  },
                  child: Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width - 40,
                    height: 200,
                    child: Card(
                        color: Colors.amber[100],
                        child: Center(
                            child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                "ክፍል ፫",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                            ),
                            const Text(
                              "+++እንደ  ሀገር +++",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                            const Text(
                              "+ሀገር  ማለት  ምን  ማለት  ነው? +",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              "+ሀገር  ምን  ዓይነት  ትውልድ  ትፈልጋለች? +",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            Text(
                              "+ሀገር  እንዴት  ትቀጥላለች? +",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            )
                          ],
                        ))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Content5Page()));
                  },
                  child: Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width - 40,
                    height: 200,
                    child: Card(
                        color: Colors.amber[100],
                        child: const Center(
                          child: Text(
                            "መውጫ",
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

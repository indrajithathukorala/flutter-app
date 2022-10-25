// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new

import 'package:camly/ads/AdHelper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BannerAd bAd = new BannerAd(
      size: AdSize.banner,
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      listener: BannerAdListener(onAdClosed: (Ad ad) {
        print("Ad Closed");
      }, onAdFailedToLoad: (Ad ad, LoadAdError error) {
        ad.dispose();
      }, onAdLoaded: (Ad ad) {
        print('Ad Loaded');
      }, onAdOpened: (Ad ad) {
        print('Ad opened');
      }),
      request: AdRequest());

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    bAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => {},
              child: Text("dasdasdas"),
            ),
          ),
          SizedBox(
            height: 50,
            child: AdWidget(ad: bAd..load()),
          )
        ],
      ),
    );
  }
}

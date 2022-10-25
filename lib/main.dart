// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

// ignore: unused_import
import 'package:camly/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("dasdasdas"),
        ),
        body: HomeScreen(),
      ),
    );
  }
}

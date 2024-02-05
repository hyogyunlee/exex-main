import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/screens/info_page.dart';
import 'package:flutterweb/screens/lifeStyle_page.dart';
import 'package:flutterweb/screens/start_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  bool canFlip = false;

  void checkCanFlip() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: const Text('MAIDA'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.login),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StartPage(),
            InfoPage(),
            LifeStylePage(),
          ],
        ),
      ),
    );
  }
}

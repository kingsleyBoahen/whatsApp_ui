import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(milliseconds: 200),
        () => Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const HomePage()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image(
        image: NetworkImage(
            'data:image/png;base64,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'),
      )),
    );
  }
}

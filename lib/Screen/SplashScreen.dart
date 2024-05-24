import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resume_app/utils/Colors.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushNamed('/home');
    });
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/image/Splash.jpeg'),
            )
        ),
      ),
      //body: Center(child:Image.asset('asset/image/Splash.jpeg'),
      ),
    );
  }
}

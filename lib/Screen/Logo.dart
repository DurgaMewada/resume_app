import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resume_app/utils/Colors.dart';
class Logoscreen extends StatefulWidget {
  const Logoscreen({super.key});

  @override
  State<Logoscreen> createState() => _LogoscreenState();
}

class _LogoscreenState extends State<Logoscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushNamed('/splash');
    });
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('asset/image/logo.png'),
            )
        ),
      ),
      ),
    );
  }
}

// ignore_for_file: unused_import

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:p1/screens/login_screen.dart';
import 'package:p1/screens/screen_1.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Image(height: 250, image: AssetImage('assets/images/logo.png')),
              SizedBox(
                height: 10,
              ),
              Text(
                'Foodie',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans-Bold'),
              )
            ],
          ),
        ));
  }

  void isLogin(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FirstScreen())));
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider_example/screens/home_screen.dart';
import 'package:provider_example/screens/login_screen.dart';
import 'package:provider_example/shared/shared_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool? isLoggedIn;

  Future getIsLoggedIn() async {
    isLoggedIn = await SharedService().getIsLoggedIn();
    print(isLoggedIn);
    print("done");
    return isLoggedIn;
  }

  @override
  void initState() {
    getIsLoggedIn().then((isLoggedIn) {
      Timer(Duration(milliseconds: 2500), () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => isLoggedIn ? HomeScreen() : LoginScreen()));
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Splash", style: TextStyle(fontSize: 30),)),
    );
  }
}

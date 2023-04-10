import 'package:flutter/material.dart';
import 'package:provider_example/screens/home_screen.dart';
import 'package:provider_example/shared/shared_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Future setIsLoggedIn() async {
    await SharedService().setIsLoggedIn(value: true);

    print("done");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: Text("Login", style: TextStyle(fontSize: 30),)),
          SizedBox(height: 20),
          GestureDetector(
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.cyan,
              ),
              child: Center(
                child: Text('Login'),
              ),
            ),
            onTap: () {
              setIsLoggedIn();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}

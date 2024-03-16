import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text(
          "Home Screen",
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'SuperOcean',
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}

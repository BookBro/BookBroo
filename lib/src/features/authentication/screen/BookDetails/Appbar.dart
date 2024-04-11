import 'package:bookbroo/src/features/authentication/screen/Home%20Screen/home_screen.dart';
import 'package:bookbroo/src/features/authentication/screen/welcome/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          child: Image.asset(
            "assets/images/BackButton/backbutton.png",
            height: 40,
          ),
        ),
        Text(
          "Book Details",
          style: TextStyle(
            fontFamily: 'SuperOcean',
            fontSize: 25,
          ),
        ),
        CircleAvatar(
          backgroundColor: Color(0xFF4c2b21),
          radius: 20,
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

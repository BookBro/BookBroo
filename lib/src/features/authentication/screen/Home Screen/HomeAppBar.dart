import 'package:bookbroo/src/features/authentication/screen/welcome/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

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
                builder: (context) => Welcome(),
              ),
            );
          },
          child: Image.asset(
            "assets/images/BackButton/backbutton.png",
            height: 40,
          ),
        ),
        Text(
          "Home",
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.settings),
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BackButtoncode extends StatelessWidget {
  const BackButtoncode({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Row(
        children: [
          Image.asset("assets/images/BackButton/backbutton.png"),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}

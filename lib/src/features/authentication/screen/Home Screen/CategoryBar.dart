import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: const Row(
                  children: [
                    Text(
                      "ALL",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'JAi',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Philosophy",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'JAi',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Horror",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'JAi',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Fantasy",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'JAi',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Drama",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'JAi',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

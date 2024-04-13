import 'package:bookbroo/src/features/authentication/screen/BookDetails/BookDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../constants/images_strings.dart';

class BookTil extends StatelessWidget {
  final String coverUrl;
  final String title;
  final String author;
  final String rating;
  final String reviews;
  final String personReview;
  final VoidCallback? onTap;
  const BookTil({
    super.key,
    required this.coverUrl,
    required this.title,
    required this.author,
    required this.rating,
    required this.reviews,
    required this.personReview,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(10), // Adjust the value as needed
            color: Colors.white70,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, -3),
              ),
            ],
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: Offset(3, 2),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      coverUrl, //image
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      author,
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          vDSIPhoto,
                          height: 20,
                        ),
                        Text(rating)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

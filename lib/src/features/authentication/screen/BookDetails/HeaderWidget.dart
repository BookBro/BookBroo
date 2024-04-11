import 'package:flutter/cupertino.dart';

import '../../../../constants/images_strings.dart';
import '../../../../utils/LineBarforCategoryBar.dart';
import 'Appbar.dart';

class BookDetailsHeader extends StatelessWidget {
  final String coverUrl;
  final String title;
  final String author;
  final String rating;
  final String reviews; // abhi bana lena
  final String personReview; // abhi bana lena
  const BookDetailsHeader({
    super.key,
    required this.coverUrl,
    required this.title,
    required this.author,
    required this.rating,
    required this.reviews,
    required this.personReview,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Appbar(),
        LineBarforCategoryBar(),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                coverUrl,
                width: 200,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 1,
          style: TextStyle(
            fontFamily: 'JAi',
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          author,
          textAlign: TextAlign.center,
          maxLines: 1,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Rating",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Image.asset(
                      //vDSIPhoto,
                      //height: 20,
                      //),
                      //SizedBox(
                      //width: 5,
                      //),
                      Text(
                        rating,
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 70,
              ),
              Column(
                children: [
                  Text(
                    "Reviews",
                    style: TextStyle(fontSize: 15.0),
                  ),
                  Text(
                    reviews,
                  ),
                ],
              )
            ],
          ),
        ),
        LineBarforCategoryBar(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

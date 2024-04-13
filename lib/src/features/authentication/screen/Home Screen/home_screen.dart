import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/LineBarforCategoryBar.dart';
import '../../models/Data.dart';
import '../BookDetails/BookDetails.dart';
import '../DiscoverPage/discoverpage.dart';
import 'BookCard.dart';
import 'CategoryBar.dart';
import 'HomeAppBar.dart';
import 'SearchBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (bookData.isEmpty) {
      // Handle the case where bookData is empty
      return Container(); // Or display a message indicating no books are available
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                HomeAppBar(),
                SizedBox(
                  height: 20,
                ),
                HomeSearchBar(),
                LineBarforCategoryBar(),
                CategoryBar(),
                LineBarforCategoryBar(),

                //--- For You Page --- //

                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "For You",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: bookData
                              .where(
                                (book) =>
                                    book.title != null &&
                                    book.author != null &&
                                    book.coverUrl != null &&
                                    book.reviews != null &&
                                    book.rating != null &&
                                    book.personReview != null,
                              )
                              .map(
                                (book) => BookCard(
                                  title: book.title!,
                                  author: book.author!,
                                  coverUrl: book.coverUrl!,
                                  reviews: book.reviews!,
                                  rating: book.rating!,
                                  personReview: book.personReview!,
                                  onTap: () {
                                    Get.to(BookDetails(book: book));
                                  },
                                ),
                              )
                              .toList(),
                        ),
                      ),
                      LineBarforCategoryBar(),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Recommendation",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: bookData
                                    .where(
                                      (book) =>
                                          book.title != null &&
                                          book.author != null &&
                                          book.coverUrl != null &&
                                          book.reviews != null &&
                                          book.rating != null &&
                                          book.personReview != null,
                                    )
                                    .map(
                                      (book) => BookCard(
                                        title: book.title!,
                                        author: book.author!,
                                        coverUrl: book.coverUrl!,
                                        reviews: book.reviews!,
                                        rating: book.rating!,
                                        personReview: book.personReview!,
                                        onTap: () {
                                          Get.to(BookDetails(book: book));
                                        },
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      LineBarforCategoryBar(),
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Most Viewed",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: bookData
                                    .where(
                                      (book) =>
                                          book.title != null &&
                                          book.author != null &&
                                          book.coverUrl != null &&
                                          book.reviews != null &&
                                          book.rating != null &&
                                          book.personReview != null,
                                    )
                                    .map(
                                      (book) => BookCard(
                                        title: book.title!,
                                        author: book.author!,
                                        coverUrl: book.coverUrl!,
                                        reviews: book.reviews!,
                                        rating: book.rating!,
                                        personReview: book.personReview!,
                                        onTap: () {
                                          Get.to(BookDetails(book: book));
                                        },
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // --- sab se niche ---
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, -3), // changes position of shadow
              ),
            ],
          ),
          child: BottomNavigationBar(
            backgroundColor: Color(0xffd3c5ad),
            items: [
              BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Get.to(HomeScreen());
                  },
                  child: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    Get.to(DiscoverPage());
                  },
                  child: Icon(
                    Icons.explore,
                    color: Colors.black,
                  ),
                ),
                label: 'Discover',
              ),
              BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

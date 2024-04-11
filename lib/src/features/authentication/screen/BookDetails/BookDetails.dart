import 'package:bookbroo/src/features/authentication/models/BookModels.dart';
import 'package:bookbroo/src/features/authentication/screen/BookDetails/HeaderWidget.dart';
import 'package:bookbroo/src/features/authentication/screen/BookDetails/ReadMore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../DiscoverPage/discoverpage.dart';
import '../Home Screen/home_screen.dart';

class BookDetails extends StatelessWidget {
  final BookModel book;
  const BookDetails({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Expanded(
              child: Column(
                children: [
                  BookDetailsHeader(
                    coverUrl: book.coverUrl!,
                    title: book.title!,
                    author: book.author!,
                    rating: book.rating!,
                    reviews: book.reviews!,
                    personReview: book.personReview!,
                  ),
                  Column(
                    children: [
                      Text(
                        "Review",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: ReadMoreText(
                              text:
                                  "Ashneer Grover is the poster boy of the emerging start-up culture, the most talked about judge from Shark Tank India and one of the most controversial entrepreneurs. Wow, that’s sensational, isn’t it? Talking about sensationalism, there are some stories that are so thought-provoking that nothing more is needed to cause a stir. I still remember in a few episodes of Shark Tank India (Season 1), Ashneer had given a reference of his young co-founder that he wouldn’t dare do such silly business mistakes. I wish he knew the real faces of people around him and didn’t have such blind confidence in them. This costed him to be subject to doglapan of the highest order. Anyways, what has been done, has been done. Here we are with, Doglapan by Ashneer Grover, an auto-biography of Bharat Pe co-founder. in hand.",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 60.0,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              10), // Adjust the value as needed
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.chrome_reader_mode),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Write Review",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      letterSpacing: 1.5),
                                )
                              ],
                            ),
                            Container(
                              width: 5,
                              height: 35,
                              color: Colors.black,
                            ),
                            Row(
                              children: [
                                Icon(Icons.shopping_cart),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Buy Book",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      letterSpacing: 1.5),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
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

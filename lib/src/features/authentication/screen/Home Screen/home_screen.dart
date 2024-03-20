import 'package:bookbroo/src/constants/images_strings.dart';
import 'package:bookbroo/src/constants/size.dart';
import 'package:bookbroo/src/features/authentication/screen/DiscoverPage/discoverpage.dart';
import 'package:bookbroo/src/features/authentication/screen/Home%20Screen/BookCard.dart';
import 'package:bookbroo/src/features/authentication/screen/Home%20Screen/HomeAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/LineBarforCategoryBar.dart';
import '../../models/Data.dart';
import 'CategoryBar.dart';
import 'SearchBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                              .map(
                                (e) => BookCard(
                                  title: e.title!,
                                  author: e.author!,
                                  coverUrl: e.coverUrl!,
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
                                    .map(
                                      (e) => BookCard(
                                        title: e.title!,
                                        author: e.author!,
                                        coverUrl: e.coverUrl!,
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
                                  "Most Viwed",
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
                                    .map(
                                      (e) => BookCard(
                                        title: e.title!,
                                        author: e.author!,
                                        coverUrl: e.coverUrl!,
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
                color: Colors.black.withOpacity(0.1),
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
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
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DiscoverPage(),
                      ),
                    );
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

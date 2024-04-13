import 'package:bookbroo/src/features/authentication/models/BookModels.dart';
import 'package:bookbroo/src/features/authentication/models/BookTil.dart';
import 'package:bookbroo/src/features/authentication/models/Data.dart';
import 'package:bookbroo/src/features/authentication/screen/Home%20Screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../constants/images_strings.dart';
import '../BookDetails/BookDetails.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center the row contents
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
                      Expanded(
                        // Center the text
                        child: Text(
                          "Discover",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'SuperOcean',
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(width: 40), // Adjust as needed
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // ---- NavBar ------//

                // ---- booktil ------//
                Column(
                  children: bookData
                      .map(
                        (e) => BookTil(
                          coverUrl: e.coverUrl!,
                          title: e.title!,
                          author: e.author!,
                          rating: e.rating!,
                          reviews: e.reviews!,
                          personReview: e.personReview!,
                          onTap: () {
                            Get.to(BookDetails(book: e));
                          },
                        ),
                      )
                      .toList(),
                )
              ],
            ),
          ),
        ),

        // ---- BottomBar ---- //

        bottomNavigationBar: BottomNavigationBarTheme(
          data: BottomNavigationBarThemeData(
            selectedLabelStyle: TextStyle(color: Colors.black),
            unselectedLabelStyle: TextStyle(color: Colors.black),
          ),
          child: Container(
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
      ),
    );
  }
}

import 'package:bookbroo/src/constants/size.dart';
import 'package:bookbroo/src/features/authentication/screen/Home%20Screen/HomeAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../utils/LineBarforCategoryBar.dart';
import 'CategoryBar.dart';
import 'SearchBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

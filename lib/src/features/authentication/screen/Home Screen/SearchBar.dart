import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.background),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            size: 40,
          ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search here..",
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

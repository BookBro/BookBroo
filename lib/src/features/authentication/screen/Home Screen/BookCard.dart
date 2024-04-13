import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String coverUrl;
  final String title;
  final String author;
  final String rating;
  final String reviews;
  final String personReview;
  final VoidCallback? onTap;

  const BookCard({
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
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: 120,
          child: Column(
            children: [
              Container(
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
                    coverUrl,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                author,
                maxLines: 1,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
      ),
    );
  }
}

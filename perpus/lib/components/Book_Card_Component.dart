import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 320,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF8ADDC9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'images/peter.png', // Add your book cover image here
              width: 90,
              height: 110,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name Book :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Flexible(
                  child: Text(
                    'Peter Pan In Wonderland',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Author :',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'by Agnes',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 10),
                Flexible(
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      Icon(Icons.star, color: Colors.white, size: 16),
                      Icon(Icons.star, color: Colors.white, size: 16),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
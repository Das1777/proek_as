import 'package:flutter/material.dart';

class NotFoundComponent extends StatelessWidget {
  const NotFoundComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width / 1.2,
          child: Image.asset("images/notfound.png"),
        ),
        Text(
          "No books have been returned yet",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
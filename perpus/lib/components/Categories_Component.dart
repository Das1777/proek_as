import 'package:flutter/material.dart';

class Categories_Component extends StatelessWidget {
  const Categories_Component({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
            height: MediaQuery.sizeOf(context).height / 5,
            child: Scrollbar(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    width: MediaQuery.sizeOf(context).width / 2,
                    child: Image.asset("images/kategori.jpg"),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

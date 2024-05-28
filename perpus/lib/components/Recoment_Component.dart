import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RecommendationComponent extends StatefulWidget {
  const RecommendationComponent({super.key});

  @override
  State<RecommendationComponent> createState() =>
      _RecommendationComponentState();
}

class _RecommendationComponentState extends State<RecommendationComponent> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  double _currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(18), // adjust padding based on screen width
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              "Recommendation",
              style: TextStyle(
                  fontSize: 30), // adjust font size based on screen width
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 4,
            child: PageView.builder(
              controller: _pageController,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Transform.scale(
                  scale: _currentPage.round() == index ? 1.0 : 0.9,
                  child: Card(
                    elevation: 0,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10), // add margin
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: Column(
                        children: [
                          Expanded(child: Image.asset("images/peter.png")),
                          Text(
                            "Peterpan In Wonderland",
                            style: TextStyle(
                                color: Color(0xFF342066), fontSize: 18),
                          ),
                          Text(
                            "By Mio Mirza",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:perpus/components/Categories_Component.dart';
import 'package:perpus/components/Pouler_Component.dart';
import 'package:perpus/components/Recoment_Component.dart';
import 'package:perpus/components/SearchComponent.dart';
import 'package:perpus/components/Wave_Component.dart';
import 'package:perpus/components/bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              WaveContainer(),
              SearchComponent(),
              RecommendationComponent(),
              Categories_Component(),
              PopulerComponent()
            ],
          ),
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: Colors.grey,
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            selectedColor: Color(0xFF8ADDC9),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.menu),
            title: Text("Menu"),
            selectedColor: Color(0xFF8ADDC9),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.info),
            title: Text("Info"),
            selectedColor: Color(0xFF8ADDC9),
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            selectedColor: Color(0xFF8ADDC9),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perpus/components/App_Bar_Component.dart';
import 'package:perpus/components/Detail_Component.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B2B72),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height / 2,
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90),
                  bottomRight: Radius.circular(90),
                ),
                child: Image.asset(
                  "images/peter.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: AppBar().preferredSize.height,
            title: AppBarComponent(),
          ),
          SliverToBoxAdapter(
            child: Transform.translate(
              offset: Offset(0, -20), // Menggeser DetailComponent ke atas
              child: DetailComponent(),
            ),
          ),
        ],
      ),
    );
  }
}

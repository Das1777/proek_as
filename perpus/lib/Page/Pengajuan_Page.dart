import 'package:flutter/material.dart';
import 'package:perpus/components/App_Bar_Pengajuan.dart';
import 'package:perpus/components/Book_Card_Component.dart';
import 'package:perpus/components/NotFound_Component.dart';
import 'package:perpus/components/Tab_Button_Component.dart';

class PengajuanPage extends StatefulWidget {
  const PengajuanPage({super.key});

  @override
  _PengajuanPageState createState() => _PengajuanPageState();
}

class _PengajuanPageState extends State<PengajuanPage> {
  int selectedIndex = 0;

  void onTabSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: MediaQuery.of(context).size.height / 3.5,
            flexibleSpace: FlexibleSpaceBar(
              background: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                child: Image.asset(
                  "images/bgpengajuan.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: AppBar().preferredSize.height,
            title: AppBarPengajuan(),
          ),
          SliverToBoxAdapter(
            child: Transform.translate(
              offset: Offset(0, -20), // Menggeser DetailComponent ke atas
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TabButton(
                            title: 'Pengajuan',
                            isSelected: selectedIndex == 0,
                            onTap: () => onTabSelected(0),
                          ),
                          TabButton(
                            title: 'Pengembalian',
                            isSelected: selectedIndex == 1,
                            onTap: () => onTabSelected(1),
                          ),
                          TabButton(
                            title: 'History',
                            isSelected: selectedIndex == 2,
                            onTap: () => onTabSelected(2),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  if (selectedIndex == 0) BookCard(),
                  if (selectedIndex == 1) NotFoundComponent(),
                  if (selectedIndex == 2) NotFoundComponent(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

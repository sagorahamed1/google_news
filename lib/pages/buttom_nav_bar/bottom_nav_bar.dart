import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_news/pages/for_you_page/for_you_page.dart';

import '../following/following_page.dart';
import '../headines_page/headlines_page.dart';

class ButtomNabBar extends StatefulWidget {
  const ButtomNabBar({super.key});

  @override
  State<ButtomNabBar> createState() => _ButtomNabBarState();
}

class _ButtomNabBarState extends State<ButtomNabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      /// botom lav bar
      bottomNavigationBar: Material(
        color: Colors.black,
        textStyle: TextStyle(color: Colors.white),
        child: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(Icons.add_box_outlined)),
              text: "For you",
            ),
            Tab(

              icon: Container(child: SvgPicture.asset("assets/icons/headlines.svg")),
              text: "Headlines",
            ),
            Tab(
              icon: Container(child: SvgPicture.asset("assets/icons/following.svg")),
              text: "Following",
            ),

            Tab(
              icon: Container(child: SvgPicture.asset("assets/icons/following.svg")),
              text: "Newsstand",
            ),
          ],
        ),
      ),

      body: TabBarView(controller: _tabController, children: [
       Container(child: ForYouPage(),),
       Container(child: HeadlinesPage(),),
       Container(child: HeadlinesPage(),),
       Container(child: HeadlinesPage(),)
      ]),

    );
  }
}

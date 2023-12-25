import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_news/pages/following/following_page.dart';
import 'package:google_news/pages/for_you_page/for_you_page.dart';
import 'package:google_news/pages/headines_page/headlines_page.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_news/utils/app_colors.dart';

import '../newsstastands/newsstastands_page.dart';

class ButtomNabBar extends StatefulWidget {
  const ButtomNabBar({super.key});

  @override
  State<ButtomNabBar> createState() => _ButtomNabBarState();
}

class _ButtomNabBarState extends State<ButtomNabBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.black38,
        child: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.lightBlue.shade200,
          selectedIndex: currentPageIndex,
          backgroundColor: AppColors.white,
          destinations:  <Widget>[
            NavigationDestination(
              icon:Image.asset("assets/icons/foryou.png"),
              label: 'For you',
            ),
            NavigationDestination(
              icon: SvgPicture.asset("assets/icons/headlines.svg"),
              label: 'Headlines',
            ),
            NavigationDestination(
              icon: SvgPicture.asset("assets/icons/following.svg"),
              label: 'Following',
            ),

            NavigationDestination(
              icon: Image.asset("assets/icons/newsstand.png"),
              label: 'Newsstand',
            ),
          ],
        ),
      ),
      body: <Widget>[
       /// for you page
       ForYouPage(),


        ///  headlines
        HeadlinesPage(),


        /// following page
        Following_page(),


        /// newsstand
        NewsstandPage()

      ]

      [currentPageIndex],
    );
  }
}

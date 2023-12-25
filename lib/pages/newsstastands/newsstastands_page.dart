import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_news/pages/following/widget/following_items.dart';
import 'package:google_news/pages/following/widget/newsListView.dart';
import 'package:google_news/utils/app_colors.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class NewsstandPage extends StatelessWidget {
  NewsstandPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    List entertainment = ["NOW", "NME", "SPS", "STR", "OK", "BFC", "DAN"];
    return Scaffold(
      backgroundColor: AppColors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: AppColors.white,
              centerTitle: true,
              leading: const Icon(
                Icons.search,
                color: AppColors.black,
              ),
              title: const Text(
                "Newsstand",
                style: TextStyle(color: AppColors.black),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Container(
                      child: const Text(
                        "S",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "Suggested Sources",
                    style: TextStyle(color: AppColors.black),
                  )),
              Text("Entertainment"),
              EntertaimentSection(width, entertainment),
            ],
          ),
        ),
      ),
    );
  }

  Container EntertaimentSection(double width, List<dynamic> entertainment) {
    return Container(
              height: 100.h,
              width: width * 3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: entertainment.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(4),
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey,
                                ),
                                child: Center(
                                    child: Text(
                                  "${entertainment[index]}",
                                  style: TextStyle(
                                      fontSize: 38.dp,
                                      color: AppColors.white,
                                      fontWeight: FontWeight.w900),
                                ))),
                            Positioned(
                              left: 30,
                              top: 80,
                              child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black26,
                                  ),
                                  child: Icon(
                                    Icons.star_border_outlined,
                                    size: 20,
                                  )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text("RAdio Times"),
                        Text("free of charge")
                      ],
                    ),
                  );
                },
              ),
            );
  }
}

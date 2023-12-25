import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_news/constants/following_new/following_new_constants.dart';
import 'package:google_news/pages/following/widget/following_items.dart';
import 'package:google_news/pages/following/widget/newsListView.dart';
import 'package:google_news/utils/app_colors.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class Following_page extends StatelessWidget {
  const Following_page({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
                "Following",
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
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recently followed",
                    style: TextStyle(color: AppColors.black),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: width/7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Color(0xFF4E4B66),
                          ),
                          child: Icon(Icons.my_library_add_outlined,
                              color: Colors.white),
                        ),
                        const Text(
                          "Library \n ",
                          style: TextStyle(color:AppColors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Container(
                          height: 80,
                          width: width/7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: Color(0xFF4E4B66),
                          ),
                          child: Icon(Icons.save_sharp, color: Colors.white),
                        ),
                        const Text(
                          "Saved \n Stories",
                          style: TextStyle(color:AppColors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Container(
                            height: 80,
                            width: width/7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Color(0xFF1ABCFE),
                            ),
                            child: const Center(
                                child: Text(
                              "IS",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ))),
                        const Text(
                          "Internet \n Security",
                          style: TextStyle(color: AppColors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Container(
                            height: 80,
                            width: width/7,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Color(0xFF0ACF83),
                            ),
                            child: const Center(
                                child: Text(
                              "OE",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ))),
                        const Text(
                          "  Online \n education",
                          style: TextStyle(color: AppColors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.black12,
                thickness: 13,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFF0ACF83),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text("IS"),
                        ),
                      ),
                       Text(
                        "Internet Security",
                        style: TextStyle(color: AppColors.black, fontSize: 18.dp),
                      )
                    ],
                  ),
                  CircleAvatar(
                    child: SvgPicture.asset("assets/icons/following.svg"),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: height*2,
                child: NewsListView()
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Follow your interests ", style: TextStyle(color: AppColors.black,fontSize: 25.dp),),
                  Icon(Icons.more_vert,color: Colors.white12,)
                ],
              ),
              Text("Choose topics that'll appear in your For You news feed and under what your are Following", style: TextStyle(color:AppColors.black),),



              /// following items
              FollowingItems()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_news/constants/following_new/following_new_constants.dart';
import 'package:google_news/pages/following/widget/following_items.dart';
import 'package:google_news/pages/following/widget/newsListView.dart';

class Following_page extends StatelessWidget {
  const Following_page({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Color(0xFF10001A),
              centerTitle: true,
              leading: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              title: const Text(
                "Google News",
                style: TextStyle(color: Colors.white),
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
                    style: TextStyle(color: Colors.white),
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
                          style: TextStyle(color: Colors.white),
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
                          style: TextStyle(color: Colors.white),
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
                          style: TextStyle(color: Colors.white),
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
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.white10,
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
                      const Text(
                        "Internet Security",
                        style: TextStyle(color: Colors.white, fontSize: 18),
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
                  Text("Follow your interests ", style: TextStyle(color: Colors.white,fontSize: 25),),
                  Icon(Icons.more_vert,color: Colors.white12,)
                ],
              ),
              Text("Choose topics that'll appear in your For You news feed and under what your are Following", style: TextStyle(color: Colors.white),),



              /// following items
              FollowingItems()
            ],
          ),
        ),
      ),
    );
  }
}

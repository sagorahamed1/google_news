import 'package:flutter/material.dart';
import 'package:google_news/pages/for_you_page/widgets/picks_for_you.dart';
import 'package:google_news/utils/app_colors.dart';

class HeadlinesPage extends StatefulWidget {
  HeadlinesPage({super.key});

  @override
  State<HeadlinesPage> createState() => _HeadlinesPageState();
}

class _HeadlinesPageState extends State<HeadlinesPage> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
               pinned: true,
              backgroundColor: AppColors.white,
              centerTitle: true,
              leading: Icon(
                Icons.search,
                color: AppColors.black,
              ),
              title: Text(
                "Headlines",
                style: TextStyle(color: AppColors.black),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Container(
                      child: Text(
                        "S",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
              bottom: TabBar(
                tabAlignment: TabAlignment.start,
                dividerHeight: 0,
                controller: _tabController,
                isScrollable: true,
                tabs: [
                  Tab(text: "latest"),
                  Tab(text: "Bangladesh"),
                  Tab(text: "World"),
                  Tab(text: "Business"),
                  Tab(text: "Entertainment"),
                  Tab(text: "Sports"),
                ],
              ),
            ),
          ];
        },

       body:  Padding(
         padding: const EdgeInsets.all(10),
         child: ListView(
           physics: NeverScrollableScrollPhysics(),
           children: [

             Container(
               height: height*2.5 ,
               child: TabBarView(
                 controller: _tabController,
                 children: [
                   Container(
                       height: height,
                       child: PicksForYou()
                   ),    Container(
                       height: height,
                       child: PicksForYou()
                   ),    Container(
                       height: height,
                       child: PicksForYou()
                   ),    Container(
                       height: height,
                       child: PicksForYou()
                   ),    Container(
                       height: height,
                       child: PicksForYou()
                   ),    Container(
                       height: height,
                       child: PicksForYou()
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
      ),
    );
  }
}

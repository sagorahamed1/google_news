import 'package:flutter/material.dart';
import 'package:google_news/pages/for_you_page/widgets/picks_for_you.dart';

class HeadlinesPage extends StatefulWidget {
  HeadlinesPage({super.key});

  @override
  State<HeadlinesPage> createState() => _HeadlinesPageState();
}

class _HeadlinesPageState extends State<HeadlinesPage>
    with SingleTickerProviderStateMixin {
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
      backgroundColor: Colors.black,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              // snap: true,
              floating: true,
               pinned: true,
              backgroundColor: Color(0xFF10001A),
              centerTitle: true,
              leading: Icon(
                Icons.search,
                color: Colors.white,
              ),
              title: Text(
                "Headlines",
                style: TextStyle(color: Colors.white),
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

           children: [

             Container(
               height: height,
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

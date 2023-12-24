import 'package:flutter/material.dart';
import 'widgets/picks_for_you.dart';

class ForYouPage extends StatelessWidget {
  const ForYouPage({Key? key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Color(0xFF10001A),
              centerTitle: true,
              leading: Icon(
                Icons.search,
                color: Colors.white,
              ),
              title: Text(
                "Google News",
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
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(

            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Top stories  >",
                  style: TextStyle(color: Color(0xFF4285F4), fontSize: 26),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        "assets/images/car.png",
                        width: width / 1,
                        height: height / 4,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(
                      "Watch: This Insanely Detailed Model of the Ferrari 296 GT3 Is the Coolest Car You’ll See Today",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2h",
                          style: TextStyle(
                              color: Color(0xFF7F8EA3), fontSize: 18),
                        ),
                        Icon(Icons.more_vert, color: Color(0xFF7F8EA3))
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                height: 2,
                color: Color(0xFF94A3B8),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 6,
                    child: Text(
                      "5 troops killed in Gaza; PM denies US dissuaded him from hitting Hezbollah in October",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            "assets/images/roket.png",
                            fit: BoxFit.cover,
                            height: 100,
                            width: 50,
                          ))),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "14h",
                    style: TextStyle(color: Color(0xFF7F8EA3), fontSize: 16),
                  ),
                  Icon(Icons.more_vert, color: Color(0xFF7F8EA3))
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                height: 2,
                color: Color(0xFF94A3B8),
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  const Expanded(
                    flex: 6,
                    child: Text(
                      "UN Security Council passes compromise resolution on Israel-Hamas war as US abstains",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFFFFFFF)),
                    ),
                  ),
                  Expanded(
                      flex: 3,
                      child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Image.asset(
                            "assets/images/un.png",
                            fit: BoxFit.cover,
                            height: 100,
                            width: 50,
                          ))),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "10h",
                    style: TextStyle(color: Color(0xFF7F8EA3), fontSize: 16),
                  ),
                  Icon(Icons.more_vert, color: Color(0xFF7F8EA3))
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(
                height: 2,
                color: Color(0xFF94A3B8),
              ),
              SizedBox(
                height: 15,
              ),
              const Text(
                "Picks for you",
                style: TextStyle(color: Color(0xFF4285F4), fontSize: 26),
              ),
              Expanded(
                child: Container(
                  height: height,
                  child: PicksForYou(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
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
    );
  }
}

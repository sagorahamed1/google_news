import 'package:flutter/material.dart';
import 'package:google_news/utils/app_colors.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      backgroundColor: AppColors.white,
      centerTitle: true,
      leading: Icon(
        Icons.search,
        color: AppColors.black,
      ),
      title: Text(
        "Google News",
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
    );
  }
}

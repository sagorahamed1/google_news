import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_news/utils/app_colors.dart';

import '../../../constants/following_new/following_new_constants.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: FollowingNewsConstants.followingNewsInfo.length,
      itemBuilder: (context, index) {
        var newsInfo =
        FollowingNewsConstants.followingNewsInfo[index];
        return Column(
          children: [
            Divider(color: Colors.white10,),

            Row(
              children: [
                SvgPicture.asset("${newsInfo["companyLogo"]}"),
                Text("   ${newsInfo["companyName"]}",style: TextStyle(color: AppColors.black),)
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Text(
                    "${newsInfo["headLineText"]}",
                    style:  TextStyle(
                        fontSize: 17.dp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black),
                  ),
                ),
                Expanded(
                    flex: 3,
                    child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.asset(
                          "${newsInfo['image']}",
                          fit: BoxFit.cover,
                          height: 100,
                          width: 50,
                        ))),
              ],
            ),


            SizedBox(height: 15,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("23 hours ago",style: TextStyle(color: Color(0xFF7F8EA3)),),
                Icon(Icons.more_vert,color: Color(0xFF7F8EA3),)
              ],
            )
          ],
        );
      },
    );
  }
}

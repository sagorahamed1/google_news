import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_news/constants/news_constants/news_constants.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:google_news/utils/app_colors.dart';
import '../../widgets/buttomsheet_widget.dart';

class PicksForYou extends StatelessWidget {
  const PicksForYou({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
          itemCount: NewsConstants.newsInfo.length,
          itemBuilder: (context, index) {
          var newsInfo = NewsConstants.newsInfo[index];
          return Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Image.asset(
                    "${newsInfo['image']}",height: height/3.8,width: width,fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: 15,),
                Row(
                  children: [
                    SvgPicture.asset("${newsInfo["companyLogo"]}"),
                    Text("  ${newsInfo["companyName"]}",style: TextStyle(color: AppColors.black),)
                  ],
                ),
                Text(
                  "${newsInfo["headLineText"]}",
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black),
                ),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "2h",
                      style: TextStyle(
                          color: Color(0xFF7F8EA3), fontSize: 18.dp),
                    ),
                    IconButton(onPressed: (){
                      showBottomSheetWidget(context);
                    }, icon: Icon(Icons.more_vert,color: Color(0xFF7F8EA3),))
                  ],
                ),
                 SizedBox(
                  height: 4.h,
                ),
              ],
            ),
          );
          },),
    );
  }
}

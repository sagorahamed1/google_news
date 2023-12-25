import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FollowingItems extends StatelessWidget {
  const FollowingItems({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return
     Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20,bottom: 20),
                width: width/2,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF2C3539),
                  // color: Color(0xFF100010),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/masEververtt.svg"),
                    Text("  MASER",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: width/3,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFF2C3539),
                    // color: Color(0xFF100010),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/wwe.svg"),
                    Text("  WWE",style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            ],
          ),



          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20,bottom: 20),
                width: width/2.6,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFF2C3539),
                    // color: Color(0xFF100010),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/travel.svg"),
                    Text("  Travel",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20),
                width: width/3.5,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFF2C3539),
                    // color: Color(0xFF100010),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/masEververtt.svg"),
                    Text("  MASEVE",style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            ],
          ),




          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20,bottom: 20),
                width: width/2.6,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFF2C3539),
                    // color: Color(0xFF100010),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/europe.svg"),
                    Text("  EUROPE",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20),

                width: width/3,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFF2C3539),
                    // color: Color(0xFF100010),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/wwe.svg"),
                    Text("  WWE",style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            ],
          ),


          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20, bottom: 20),
                width: width/3,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFF2C3539),
                    // color: Color(0xFF100010),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/travel.svg"),
                    Text("  Travel",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20),

                width: width/2.8,
                height: 50,
                decoration: BoxDecoration(
                    color: Color(0xFF2C3539),
                    // color: Color(0xFF100010),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/icons/to5google.svg"),
                    Text("  To5Google",style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            ],
          )
        ],
      );

  }
}

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'pages/buttom_nav_bar/bottom_nav_bar.dart';
import 'utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (p0, p1, p2) {
         return MaterialApp(
             debugShowCheckedModeBanner: false,
             title: 'Google News',
             theme: ThemeData(
               scaffoldBackgroundColor: AppColors.white,
             ),
             home: ButtomNabBar()
         );
      },
    );
  }
}

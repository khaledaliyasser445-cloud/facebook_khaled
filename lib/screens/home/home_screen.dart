import 'package:facebook/core/utils/app_colors.dart';
import 'package:facebook/screens/home/widgets/home_tab_app_bar.dart';
import 'package:facebook/screens/home/widgets/home_tab_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home-screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: const HomeTabAppBar(),
        body: TabBarView(
          children: const [
            HomeTabBody(),
            Center(child: Text("Reels")),
            Center(child: Text("Market Place")),
            Center(child: Text("Profile")),
            Center(child: Text("Notifications")),
            Center(child: Text("Settings")),
          ],
        ),
      ),
    );
  }
}
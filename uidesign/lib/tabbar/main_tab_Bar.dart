import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uidesign/tabbar/calender_page.dart';
import 'package:uidesign/tabbar/homepage.dart';
import 'package:uidesign/tabbar/profile_page.dart';
import 'package:uidesign/tabbar/project_page.dart';
import 'package:uidesign/widget/brandcolors.dart';

class MainTabBar extends StatefulWidget {
  const MainTabBar({Key? key}) : super(key: key);

  @override
  State<MainTabBar> createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> {
  int currentIndex = 0;
  List<Widget> pages = [
    Homepagee(),
    ProjectPage(),
    ProfilePage(),
    CalenderPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),

      // Here's the new attribute:

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset("asset/layout.svg"),
                label: "My Task",
                backgroundColor: secondaryColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month),
                label: "My Task",
                backgroundColor: secondaryColor),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month,
                color: Colors.transparent,
              ),
              label: "My Task",
              backgroundColor: secondaryColor,
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset("asset/layout.svg"),
                label: "My Task",
                backgroundColor: secondaryColor),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "My Task",
                backgroundColor: secondaryColor),
          ]),
    );
  }
}

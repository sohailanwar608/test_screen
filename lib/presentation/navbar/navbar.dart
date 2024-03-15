import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:test_screen/presentation/chat_screen/chat_screen.dart';
import 'package:test_screen/presentation/home_screen/home_screen.dart';
import 'package:test_screen/presentation/profile_screen/profile_screen.dart';
import 'package:test_screen/presentation/setting_screen/setting_screen.dart';
import 'package:test_screen/presentation/speech_screen/speech_screen.dart';
import 'package:test_screen/utils/color.dart';

class NavBarScreen extends StatefulWidget
{
  const NavBarScreen({super.key});
  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen>
{
  int _selectedIndex = 0;
  @override

  Widget build(BuildContext context)
  {
    var navBody = [
      const HomeScreen(),
      const SpeechScreen(),
      const ChatScreen(),
      const ProfileScreen(),
      const SettingScreen(),
    ];
    return Scaffold
      (
      body: navBody.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
          color: const Color(0xff25282f),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 8 ,top: 20, bottom: 25),
            child: GNav(
              gap: 7,
              activeColor: AppColor.selectedMenuTxtColor,
              iconSize: 25,
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 6),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: AppColor.selectedMenuColor,
              color: AppColor.selectedMenuTxtColor,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                ),
                GButton(
                  icon: LineIcons.speakap,
                ),
                GButton(
                  icon: LineIcons.search,
                ),
                GButton(
                  icon: LineIcons.user,
                ),
                GButton(
                  icon: LineIcons.user,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),)),
    );
  }
}

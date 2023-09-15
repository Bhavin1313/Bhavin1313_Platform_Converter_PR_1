import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platformconverter/Provider/platform_provider.dart';
import 'package:platformconverter/Views/Android/TabPage/contactpage.dart';
import 'package:platformconverter/Views/Ios/TabPageIos/addcontactpage.dart';
import 'package:platformconverter/Views/Ios/TabPageIos/contactpage.dart';
import 'package:platformconverter/Views/Ios/TabPageIos/settingspage.dart';
import 'package:provider/provider.dart';

class HomeIos extends StatefulWidget {
  const HomeIos({super.key});

  @override
  State<HomeIos> createState() => _HomeIosState();
}

class _HomeIosState extends State<HomeIos> {
  List<Widget> pageListIos = [
    AddContactIos(),
    HomeIos(),
    ContactIos(),
    SettingsIos(),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person_add_solid,
            ),
            label: "Add Contact",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
            ),
            label: "Contact",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.settings,
            ),
            label: "Settings",
          ),
        ],
      ),
      tabBuilder: (context, i) {
        return pageListIos[i];
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:platformconverter/Provider/changepageprovider.dart';
import 'package:platformconverter/Provider/platform_provider.dart';
import 'package:platformconverter/Views/Android/TapPage/contactpage.dart';
import 'package:platformconverter/Views/Android/TapPage/homepage.dart';
import 'package:platformconverter/Views/Android/TapPage/settingspage.dart';
import 'package:provider/provider.dart';

class HomePageMaterial extends StatefulWidget {
  const HomePageMaterial({super.key});

  @override
  State<HomePageMaterial> createState() => _HomePageMaterialState();
}

class _HomePageMaterialState extends State<HomePageMaterial> {
  List<Widget> pageList = [
    HomePage(),
    SettingPage(),
    ContactPage(),
  ];
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: Provider.of<ChangeIndexProvider>(context, listen: true)
              .changePageIndex
              .index,
          onTap: (val) {
            Provider.of<ChangeIndexProvider>(context, listen: false)
                .ChangeIndex(val: val);
            pageController.animateToPage(val,
                duration: Duration(microseconds: 150), curve: Curves.linear);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Contact",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Settings",
            ),
          ],
        ),
        appBar: AppBar(
          title: Text("Platform Converter"),
          actions: [
            Switch(
              value: Provider.of<PlatformProvider>(context, listen: true)
                  .changePlatform
                  .isios,
              onChanged: (val) {
                Provider.of<PlatformProvider>(context, listen: false)
                    .ConvertPlatform();
              },
            )
          ],
        ),
        body: PageView(
          onPageChanged: (val) {
            Provider.of<ChangeIndexProvider>(context, listen: false)
                .ChangeIndex(val: val);
          },
          controller: pageController,
          children: pageList,
        ));
  }
}

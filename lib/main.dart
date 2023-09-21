import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platformconverter/Provider/changepageprovider.dart';
import 'package:platformconverter/Provider/platform_provider.dart';
import 'package:platformconverter/Utils/mytheam.dart';
import 'package:platformconverter/Views/Ios/homeios.dart';
import 'package:provider/provider.dart';
import 'Provider/contact_provider.dart';
import 'Provider/datetimeprovider.dart';
import 'Provider/theam_provider.dart';
import 'Views/Android/homeandroid.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<profileprovider>(
          create: (context) => profileprovider(),
        ),
        ListenableProvider<profileprovider2>(
          create: (context) => profileprovider2(),
        ),
        ListenableProvider<switchprovider>(
          create: (context) => switchprovider(),
        ),
        ListenableProvider<datetimeprovider>(
          create: (context) => datetimeprovider(),
        ),
        ListenableProvider<ContactProvider>(
          create: (context) => ContactProvider(),
        ),
        ListenableProvider<TheamProvider>(
          create: (context) => TheamProvider(),
        ),
        ListenableProvider<PlatformProvider>(
          create: (context) => PlatformProvider(),
        ),
        ListenableProvider<ChangeIndexProvider>(
          create: (context) => ChangeIndexProvider(),
        ),
      ],
      builder: (context, child) =>
          (Provider.of<PlatformProvider>(context).changePlatform.isios == false)
              ? MaterialApp(
                  debugShowCheckedModeBanner: false,
                  theme: myTheam.lightTheme,
                  darkTheme: myTheam.darkTheme,
                  themeMode:
                      (Provider.of<TheamProvider>(context).theamChange.isDark ==
                              false)
                          ? ThemeMode.light
                          : ThemeMode.dark,
                  routes: {
                    '/': (context) => HomePageMaterial(),
                  },
                )
              : CupertinoApp(
                  debugShowCheckedModeBanner: false,
                  theme: MaterialBasedCupertinoThemeData(
                    materialTheme: (Provider.of<TheamProvider>(context)
                                .theamChange
                                .isDark ==
                            false)
                        ? ThemeData(
                            brightness: Brightness.light,
                          )
                        : ThemeData(
                            brightness: Brightness.dark,
                          ),
                  ),
                  routes: {
                    '/': (ctx) => HomeIos(),
                  },
                ),
    ),
  );
}

class AppTheme {}

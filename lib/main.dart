import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platformconverter/Provider/changepageprovider.dart';
import 'package:platformconverter/Provider/platform_provider.dart';
import 'package:platformconverter/Views/Ios/homeios.dart';
import 'package:provider/provider.dart';

import 'Provider/contact_provider.dart';
import 'Provider/theam_provider.dart';
import 'Views/Android/homeandroid.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
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
                  theme: ThemeData(useMaterial3: true),
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
                  routes: {
                    '/': (ctx) => HomeIos(),
                  },
                ),
    ),
  );
}

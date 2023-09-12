import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platformconverter/Provider/changepageprovider.dart';
import 'package:platformconverter/Provider/platform_provider.dart';
import 'package:provider/provider.dart';

import 'Views/Android/homeandroid.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<PlatformProvider>(
          create: (context) => PlatformProvider(),
        ),
        ListenableProvider<ChangeIndexProvider>(
          create: (context) => ChangeIndexProvider(),
        ),
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        routes: {
          '/': (context) => HomePageMaterial(),
        },
      ),
    ),
  );
}

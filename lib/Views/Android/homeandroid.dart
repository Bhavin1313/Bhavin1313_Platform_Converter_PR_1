import 'package:flutter/material.dart';
import 'package:platformconverter/Provider/platform_provider.dart';
import 'package:provider/provider.dart';

class HomePageMaterial extends StatefulWidget {
  const HomePageMaterial({super.key});

  @override
  State<HomePageMaterial> createState() => _HomePageMaterialState();
}

class _HomePageMaterialState extends State<HomePageMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(
                Icons.person_add_alt,
                size: 25,
              ),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            Tab(
              child: Text(
                "SETTINGS",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
          ],
        ),
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
      body: Column(
        children: [
          Row(
            children: [
              IndexedStack(
                index: 0,
                children: [
                  Text(
                    "add",
                  )
                ],
              ),
              IndexedStack(
                index: 0,
                children: [
                  Text(
                    "add",
                  )
                ],
              ),
              IndexedStack(
                index: 0,
                children: [
                  Text(
                    "add",
                  )
                ],
              ),
              IndexedStack(
                index: 0,
                children: [
                  Text(
                    "add",
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

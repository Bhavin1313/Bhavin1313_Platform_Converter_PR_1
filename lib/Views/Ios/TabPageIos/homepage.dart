import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../Provider/platform_provider.dart';

class HomeIos extends StatefulWidget {
  const HomeIos({super.key});

  @override
  State<HomeIos> createState() => _HomeIosState();
}

class _HomeIosState extends State<HomeIos> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("Platform Converter"),
        trailing: CupertinoSwitch(
          value: Provider.of<PlatformProvider>(context, listen: true)
              .changePlatform
              .isios,
          onChanged: (val) {
            Provider.of<PlatformProvider>(context, listen: false)
                .ConvertPlatform();
          },
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Home Page"),
        ],
      ),
    );
  }
}

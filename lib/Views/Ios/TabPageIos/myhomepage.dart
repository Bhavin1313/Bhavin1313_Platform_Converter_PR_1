import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../Provider/platform_provider.dart';

class myiospage extends StatefulWidget {
  const myiospage({super.key});

  @override
  State<myiospage> createState() => _myiospageState();
}

class _myiospageState extends State<myiospage> {
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
      child: Center(
        child: Text("Home Page"),
      ),
    );
  }
}

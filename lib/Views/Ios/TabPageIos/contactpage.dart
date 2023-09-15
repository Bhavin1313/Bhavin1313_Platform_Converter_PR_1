import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../Provider/platform_provider.dart';

class ContactIos extends StatefulWidget {
  const ContactIos({super.key});

  @override
  State<ContactIos> createState() => _ContactIosState();
}

class _ContactIosState extends State<ContactIos> {
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
        children: [Text("Contact Page")],
      ),
    );
  }
}

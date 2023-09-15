import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../Provider/platform_provider.dart';

class AddContactIos extends StatefulWidget {
  const AddContactIos({super.key});

  @override
  State<AddContactIos> createState() => _AddContactIosState();
}

class _AddContactIosState extends State<AddContactIos> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Add Contact Page"),
          ],
        ),
      ),
    );
  }
}

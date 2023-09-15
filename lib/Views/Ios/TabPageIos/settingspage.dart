import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../Provider/platform_provider.dart';
import '../../../Provider/theam_provider.dart';

class SettingsIos extends StatefulWidget {
  const SettingsIos({super.key});

  @override
  State<SettingsIos> createState() => _SettingsIosState();
}

class _SettingsIosState extends State<SettingsIos> {
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
        children: [
          SizedBox(
            height: 50,
          ),
          CupertinoListTile(
            leading: Icon(
              CupertinoIcons.person,
            ),
            title: Text("Profile"),
            subtitle: Text(
              "Update Profile data",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            // trailing: Switch(
            //   value: Provider.of<TheamProvider>(context, listen: true)
            //       .theamChange
            //       .isDark,
            //   onChanged: (val) {
            //     Provider.of<TheamProvider>(context, listen: false)
            //         .ChangeTheam();
            //   },
            // ),
          ),
          CupertinoListTile(
            leading: const Icon(
              CupertinoIcons.sun_max,
            ),
            title: const Text("Theam"),
            subtitle: const Text(
              "Change Theme",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            trailing: CupertinoSwitch(
              value: Provider.of<TheamProvider>(context, listen: true)
                  .theamChange
                  .isDark,
              onChanged: (val) {
                Provider.of<TheamProvider>(context, listen: false)
                    .ChangeTheam();
              },
            ),
          )
        ],
      ),
    );
  }
}

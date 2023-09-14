import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Provider/platform_provider.dart';
import '../../../Provider/theam_provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Icon(
                    Icons.person,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Text("Profile"),
                      Text(
                        "Update Peofile data",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                // Expanded(
                //   child: Switch(
                //     value: Provider.of<TheamProvider>(context, listen: true)
                //         .theamChange
                //         .isDark,
                //     onChanged: (val) {
                //       Provider.of<TheamProvider>(context, listen: false)
                //           .ChangeTheam();
                //     },
                //   ),
                // ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Icon(
                    Icons.sunny,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Text("Theam"),
                      Text(
                        "Change Theme",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Switch(
                    value: Provider.of<TheamProvider>(context, listen: true)
                        .theamChange
                        .isDark,
                    onChanged: (val) {
                      Provider.of<TheamProvider>(context, listen: false)
                          .ChangeTheam();
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
            ListTile(
              leading: Icon(
                Icons.person,
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
            ListTile(
              leading: const Icon(
                Icons.sunny,
              ),
              title: const Text("Theam"),
              subtitle: const Text(
                "Change Theme",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              trailing: Switch(
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
      ),
    );
  }
}

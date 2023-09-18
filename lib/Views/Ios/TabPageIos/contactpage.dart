import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Provider/contact_provider.dart';
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
      child: Padding(
        padding: EdgeInsets.only(top: 18.0),
        child: ListView.builder(
          itemCount: ContactProvider.ContactList.length,
          itemBuilder: (BuildContext context, int i) {
            return CupertinoListTile(
              leading: CircleAvatar(
                radius: 80,
              ),
              title: Text(
                  "${ContactProvider.ContactList[i].firstname} ${ContactProvider.ContactList[i].lastname}"),
              subtitle: Text("${ContactProvider.ContactList[i].phonenumber}"),
              trailing: IconButton(
                onPressed: () async {
                  await launchUrl(
                    Uri.parse(
                        "tel:+91${ContactProvider.ContactList[i].phonenumber}"),
                  );
                },
                icon: Icon(CupertinoIcons.phone),
              ),
            );
          },
        ),
      ),
    );
  }
}

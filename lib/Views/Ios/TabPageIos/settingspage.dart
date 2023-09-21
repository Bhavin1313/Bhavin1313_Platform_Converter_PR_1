import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import '../../../Provider/platform_provider.dart';
import '../../../Provider/theam_provider.dart';
import '../../../Utils/Globals.dart';

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
        middle: Text("Platefrom Converter"),
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
            height: 90,
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(fontSize: 20),
                ),
                CupertinoSwitch(
                    value: Provider.of<switchprovider>(context, listen: true)
                        .isprofile,
                    onChanged: (val) {
                      Provider.of<switchprovider>(context, listen: false)
                          .changeprofile(val);
                    }),
              ],
            ),
          ),
          (Provider.of<profileprovider>(context, listen: true).hasListeners ==
                  true)
              ? Column(
                  children: [
                    // (Global.pic1 == '')
                    //     ? CircleAvatar(
                    //   radius: 55,
                    //   child: Icon(CupertinoIcons.camera),
                    // )
                    //     : CircleAvatar(
                    //   radius: 55,
                    //   foregroundImage:
                    //   FileImage(File(Global.pic as String)),
                    // ),
                    const SizedBox(height: 10),
                    CupertinoButton(
                      // onPressed: () async {
                      //   final XFile? image = await Global.picker1
                      //       .pickImage(source: ImageSource.camera);
                      //   print(image!.path);
                      //   setState(() {
                      //     Global.pic1 = image.path as XFile?;
                      //   });
                      // },
                      onPressed: () {},
                      child: const Icon(
                        CupertinoIcons.camera,
                      ),
                    ),
                    CupertinoTextField()
                  ],
                )
              : Container(),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Theme",
                  style: TextStyle(fontSize: 20),
                ),
                CupertinoSwitch(
                  value: Provider.of<TheamProvider>(context, listen: true)
                      .theamChange
                      .isDark,
                  onChanged: (val) {
                    Provider.of<TheamProvider>(context, listen: false)
                        .ChangeTheam();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class _setting1State extends State<setting1> {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: Text("Platefrom Converter"),
//         trailing: CupertinoSwitch(
//           value: Provider.of<platfrom>(context, listen: false).isios,
//           onChanged: (val) {
//             Provider.of<platfrom>(context, listen: false).changeplatfrom(val);
//           },
//         ),
//       ),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 90,
//           ),
//           Container(
//             margin: EdgeInsets.all(20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Profile",
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 CupertinoSwitch(
//                     value: Provider.of<switchprovider>(context, listen: true)
//                         .isprofile,
//                     onChanged: (val) {
//                       Provider.of<switchprovider>(context, listen: false)
//                           .changeprofile(val);
//                     }),
//               ],
//             ),
//           ),
//           (Provider.of<profileprovider>(context, listen: true).hasListeners ==
//                   true)
//               ? Column(
//                   children: [
//                     (Global.pic1 == '')
//                         ? CircleAvatar(
//                             radius: 55,
//                             child: Icon(CupertinoIcons.camera),
//                           )
//                         : CircleAvatar(
//                             radius: 55,
//                             foregroundImage:
//                                 FileImage(File(Global.pic as String)),
//                           ),
//                     const SizedBox(height: 10),
//                     CupertinoButton(
//                       onPressed: () async {
//                         final XFile? image = await Global.picker1
//                             .pickImage(source: ImageSource.camera);
//                         print(image!.path);
//                         setState(() {
//                           Global.pic1 = image.path as XFile?;
//                         });
//                       },
//                       child: const Icon(
//                         CupertinoIcons.camera,
//                       ),
//                     ),
//                     CupertinoTextField(
//                       controller: Global.PNameController,
//                     )
//                   ],
//                 )
//               : Container(),
//           Container(
//             margin: EdgeInsets.all(20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Theme",
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 CupertinoSwitch(
//                     value: Provider.of<themeprovider>(context, listen: true)
//                         .theme
//                         .isdark,
//                     onChanged: (val) {
//                       Provider.of<themeprovider>(context, listen: false)
//                           .changetheme(val);
//                     }),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class _SettingsIosState extends State<SettingsIos> {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: const Text("Platform Converter"),
//         trailing: CupertinoSwitch(
//           value: Provider.of<PlatformProvider>(context, listen: true)
//               .changePlatform
//               .isios,
//           onChanged: (val) {
//             Provider.of<PlatformProvider>(context, listen: false)
//                 .ConvertPlatform();
//           },
//         ),
//       ),
//       child: Column(
//         children: [
//           SizedBox(
//             height: 90,
//           ),
//           CupertinoListTile(
//             leading: Icon(
//               CupertinoIcons.person,
//             ),
//             title: Text("Profile"),
//             subtitle: Text(
//               "Update Profile data",
//               style: TextStyle(
//                 fontSize: 12,
//               ),
//             ),
//             // trailing: Switch(
//             //   value: Provider.of<TheamProvider>(context, listen: true)
//             //       .theamChange
//             //       .isDark,
//             //   onChanged: (val) {
//             //     Provider.of<TheamProvider>(context, listen: false)
//             //         .ChangeTheam();
//             //   },
//             // ),
//           ),
//           CupertinoListTile(
//             leading: const Icon(
//               CupertinoIcons.sun_max,
//             ),
//             title: const Text("Theam"),
//             subtitle: const Text(
//               "Change Theme",
//               style: TextStyle(
//                 fontSize: 12,
//               ),
//             ),
//             trailing: CupertinoSwitch(
//               value: Provider.of<TheamProvider>(context, listen: true)
//                   .theamChange
//                   .isDark,
//               onChanged: (val) {
//                 Provider.of<TheamProvider>(context, listen: false)
//                     .ChangeTheam();
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

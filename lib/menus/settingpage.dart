import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:flutter_application_1/widgets/menu_shortcut_container.dart';
import 'package:flutter_application_1/widgets/shortcuts_menu.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/newfriends.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Menu",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 240, 240, 240),
                          ),
                          width: 40,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.gear,
                                size: 16,
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 240, 240, 240),
                          ),
                          width: 40,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.magnifyingGlass,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
//user name profile route
            Padding(
              padding: const EdgeInsets.all(1),
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.white,
                  ),
                  height: 60,
                ),
                Positioned(
                  top: 5,
                  left: 8,
                  child: Container(
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.userLarge,
                        color: white,
                      ),
                    ),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                ),
                Positioned(
                  top: 7,
                  left: 60,
                  child: Container(
                    child: Text(
                      "Gomi Titun",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 60,
                  child: Container(
                    child: Text(
                      "See your profile",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ]),
            ),

            const SizedBox(
              height: 2,
              width: 320,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.black12),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your shortcuts",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 115,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                primary: true,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) => ShortcutMenu(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                top: 0,
              ),
              child: Row(
                children: [
                  Text(
                    "All shortcuts",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            // product section
            GridView.count(
              padding: EdgeInsets.all(10),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2.5 / 1,
              children: [
                ShortcutContainer(
                    shortcutIcon: Icons.bookmark, shortcutName: "Bookmark"),
                ShortcutContainer(
                    shortcutIcon: Icons.memory_rounded,
                    shortcutName: "Memories"),
                ShortcutContainer(
                    shortcutIcon: Icons.group, shortcutName: "Group"),
                ShortcutContainer(
                    shortcutIcon: Icons.flag_rounded, shortcutName: "Flag"),
                ShortcutContainer(
                    shortcutIcon: Icons.tv_rounded, shortcutName: "Videos"),
                ShortcutContainer(
                    shortcutIcon: Icons.event, shortcutName: "Events"),
                ShortcutContainer(
                    shortcutIcon: Icons.gamepad_rounded,
                    shortcutName: "Gaming"),
                ShortcutContainer(
                    shortcutIcon: Icons.book_online_rounded,
                    shortcutName: "Stories"),
                ShortcutContainer(
                    shortcutIcon: Icons.groups, shortcutName: "friends"),
              ],
            ),

            Container(
              child: Column(
                children: [
                  ListBody(
                    children: [
                      ListTile(
                        leading: Icon(FontAwesomeIcons.solidHandshake),
                        title: Text("Community resources"),
                        trailing: Icon(Icons.keyboard_arrow_down_rounded),
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.circleQuestion),
                        title: Text("Help & Support"),
                        trailing: Icon(Icons.keyboard_arrow_down_rounded),
                      ),
                      ListTile(
                        leading: Icon(FontAwesomeIcons.gear),
                        title: Text("Setting & privacy"),
                        trailing: Icon(Icons.keyboard_arrow_down_rounded),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

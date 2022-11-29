import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/menus/friendspage.dart';
import 'package:flutter_application_1/menus/home.dart';
import 'package:flutter_application_1/menus/marketplace.dart';
import 'package:flutter_application_1/menus/notificationpage.dart';
import 'package:flutter_application_1/menus/settingpage.dart';
import 'package:flutter_application_1/menus/videopage.dart';
import 'package:flutter_application_1/widgets/tabview1.dart';
import 'package:flutter_application_1/widgets/viewpost.dart';
import 'package:flutter_application_1/widgets/menu.dart';
import 'package:flutter_application_1/widgets/stories.dart';
import 'package:flutter_application_1/widgets/wirtepost.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHomepage extends StatelessWidget {
  MyHomepage({super.key});

  final List<Tab> myTabs = <Tab>[
    Tab(
      icon: FaIcon(FontAwesomeIcons.house),
    ),
    Tab(
      icon: FaIcon(FontAwesomeIcons.userGroup),
    ),
    Tab(
      icon: FaIcon(FontAwesomeIcons.shop),
    ),
    Tab(
      icon: FaIcon(FontAwesomeIcons.tv),
    ),
    Tab(
      icon: FaIcon(FontAwesomeIcons.bell),
    ),
    Tab(
      icon: FaIcon(FontAwesomeIcons.listUl),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            title: Text(
              "facebook ",
              style: TextStyle(fontSize: 30),
            ),
            actions: const [
              IconButton(
                onPressed: null,
                icon: FaIcon(
                  FontAwesomeIcons.plus,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: FaIcon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: FaIcon(
                  FontAwesomeIcons.facebookMessenger,
                  color: Colors.white,
                ),
              ),
            ],
            bottom: TabBar(
              tabs: myTabs,
            ),
          ),
        ],
        body: TabBarView(
          children: [
            Home(),
            Friendspage(),
            MarketPlace(),
            VideoPage(),
            NotificationPage(),
            SettingPage()
          ],
        ),
      )),
    );
  }
}

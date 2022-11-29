import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/VideoPageContent/view_following.dart';
import 'package:flutter_application_1/VideoPageContent/view_for_you.dart';
import 'package:flutter_application_1/VideoPageContent/view_gaming.dart';
import 'package:flutter_application_1/VideoPageContent/view_live.dart';
import 'package:flutter_application_1/VideoPageContent/view_saved.dart';
import 'package:flutter_application_1/VideoPageContent/view_sports.dart';
import 'package:flutter_application_1/widgets/reels.dart';
import 'package:flutter_application_1/widgets/stories.dart';
import 'package:flutter_application_1/widgets/viewpost.dart';

class TabView_Video extends StatefulWidget {
  const TabView_Video({super.key});

  @override
  State<TabView_Video> createState() => _TabView_VideoState();
}

class _TabView_VideoState extends State<TabView_Video>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabcontroller = TabController(length: 6, vsync: this);
    return Column(
      children: [
        Container(
          height: 50,
          child: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.only(bottom: 5),
            indicatorColor: Color.fromARGB(255, 5, 109, 194),
            isScrollable: true,
            controller: tabcontroller,
            labelColor: Color.fromARGB(255, 2, 101, 182),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color.fromARGB(179, 193, 209, 240),
            ),
            unselectedLabelColor: Colors.black,
            // indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: "For you"),
              Tab(text: "Live"),
              Tab(text: "Gaming"),
              Tab(text: "Following"),
              Tab(text: "Sports"),
              Tab(text: "Saved"),
            ],
          ),
        ),
        SizedBox(
          height: 2,
          width: double.maxFinite,
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.black12),
          ),
        ),
        Container(
          height: 800,
          width: double.infinity,
          // ignore: prefer_const_literals_to_create_immutables
          child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: tabcontroller,
              children: [
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) =>
                        ViewForYou(),
                  ),
                ),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) =>
                        ViewLive(),
                  ),
                ),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) =>
                        ViewGaming(),
                  ),
                ),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) =>
                        ViewFollowing(),
                  ),
                ),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) =>
                        ViewSport(),
                  ),
                ),
                Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) =>
                        ViewSaved(),
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}

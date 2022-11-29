import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/reels.dart';
import 'package:flutter_application_1/widgets/stories.dart';

class TabView1 extends StatefulWidget {
  const TabView1({super.key});

  @override
  State<TabView1> createState() => _TabView1State();
}

class _TabView1State extends State<TabView1> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabcontroller = TabController(length: 2, vsync: this);

    return Column(
      children: [
        Container(
          child: TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 50),
            padding: EdgeInsets.only(bottom: 5),
            indicatorColor: Colors.blue,
            // isScrollable: true,
            controller: tabcontroller,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Stories"),
              Tab(text: "Reels"),
            ],
          ),
        ),
        Container(
          height: 180,
          width: double.infinity,
          // ignore: prefer_const_literals_to_create_immutables
          child: TabBarView(controller: tabcontroller, children: [
            Container(
              color: Colors.white60,
              width: double.infinity,
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                primary: true,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => Stories(),
              ),
            ),
            Container(
              color: Colors.white60,
              width: double.infinity,
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                primary: true,
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) => Reels(),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

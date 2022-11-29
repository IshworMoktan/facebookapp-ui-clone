import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/menus/home.dart';
import 'package:flutter_application_1/menus/home.dart';
import 'package:flutter_application_1/widgets/viewpost.dart';
import 'package:flutter_application_1/widgets/menu.dart';
import 'package:flutter_application_1/widgets/tabview1.dart';
import 'package:flutter_application_1/widgets/wirtepost.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:like_button/like_button.dart';
import 'package:line_icons/line_icons.dart';

import 'home.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String? stringResponse;
  Map? mapResponse;
  Map? dataResponse;
  List? listResponse;

  Future apiCall() async {
    http.Response response;
    response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        listResponse = mapResponse!['data'];
      });
    }
  }

  @override
  void initState() {
    apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenwidth,
          // height: screenheight,
          child: Column(
            children: [
              //writing post section
              WritePost(),
              SizedBox(
                width: double.infinity,
                height: 10,
                child: DecoratedBox(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 218, 217, 217)),
                ),
              ),
              //reels and stories section
              TabView1(),
              //viewpost section
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: listResponse!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        width: double.infinity,
                        height: 400,
                        color: Color.fromARGB(255, 135, 168, 225),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: double.infinity,
                              color: Color.fromARGB(255, 186, 202, 199),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                    child: Image.network(
                                      listResponse![index]['avatar'],
                                    ),
                                  ),
                                  Text(listResponse![index]['first_name']
                                      .toString()),
                                  Text(listResponse![index]['last_name']
                                      .toString()),
                                ],
                              ),
                            ),
                            Container(
                                height: 300,
                                width: double.infinity,
                                color: Color.fromARGB(255, 200, 238, 230),
                                child: Image.network(
                                  listResponse![index]['avatar'],
                                  fit: BoxFit.fill,
                                )),
                            Container(
                              height: 50,
                              width: double.infinity,
                              color: Color.fromARGB(255, 245, 246, 247),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  LikeButton(
                                    likeCount: 50,
                                  ),
                                  LikeButton(
                                    likeBuilder: (isLiked) =>
                                        Icon(FontAwesomeIcons.comment),
                                    likeCount: 3,
                                  ),
                                  LikeButton(
                                    likeBuilder: (isLiked) => Icon(
                                      LineIcons.share,
                                    ),
                                    likeCount: 50,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

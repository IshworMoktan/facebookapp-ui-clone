import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:intl/intl.dart';

class NotificationContent extends StatefulWidget {
  const NotificationContent({super.key});

  @override
  State<NotificationContent> createState() => _NotificationContentState();
}

class _NotificationContentState extends State<NotificationContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 2, top: 2),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Colors.white,
          ),
          height: 100,
        ),
        Positioned(
          top: 10,
          left: 5,
          child: Container(
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.userLarge,
                color: white,
              ),
            ),
            width: 67,
            height: 67,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
          ),
        ),
        Positioned(
            top: 45,
            left: 50,
            child: Container(
              width: 25,
              height: 25,
              // color: Color(0xffed4c67),
              alignment: Alignment.center,
              transformAlignment: Alignment.center,
              child: Container(
                // color: Color(0xffed4c67),
                child: Container(
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.solidHeart,
                      size: 14,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    // color: Color(0xffed4c67),
                    borderRadius: BorderRadius.circular(150),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffff7893),
                        Color.fromARGB(255, 193, 32, 32),
                      ],
                    ),
                  ),
                ),
              ),
            )),
        Positioned(
          top: 10,
          left: 85,
          child: Container(
            height: 60,
            width: 250,
            child: Text(
              "Titun reacted love to your mentioned post.This is notification is only for testing purpose.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        Positioned(
            top: -5,
            right: -5,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_horiz_rounded,
                size: 18,
                color: Colors.black,
              ),
            )),
        Positioned(
          top: 70,
          left: 85,
          child: Container(
            child: Text(
              "31 Oct at 11:34 pm",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewFriends extends StatefulWidget {
  const NewFriends({super.key});

  @override
  State<NewFriends> createState() => _NewFriendsState();
}

class _NewFriendsState extends State<NewFriends> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Colors.white,
          ),
          height: 110,
        ),
        Container(
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.userLarge,
              color: white,
            ),
          ),
          width: 100,
          height: 100,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.blueGrey),
        ),
        Positioned(
          top: 10,
          left: 110,
          child: Container(
            child: Text(
              "New friend",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 120,
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
              border: Border.all(width: 2, color: Colors.white),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 110,
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueGrey,
              border: Border.all(width: 2, color: Colors.white),
            ),
          ),
        ),
        Positioned(
          top: 33,
          left: 150,
          child: Container(
            child: Text(
              "24 mutual friends",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 110,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromARGB(255, 10, 125, 219)),
            ),
            onPressed: null,
            child: Text(
              "Add friends",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.white),
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 225,
          child: ElevatedButton(
            onPressed: null,
            child: Text(
              "Remove",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),
          ),
        )
      ]),
    );
  }
}

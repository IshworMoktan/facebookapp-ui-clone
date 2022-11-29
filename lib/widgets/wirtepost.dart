import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icon.dart';

class WritePost extends StatelessWidget {
  WritePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.all(15),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.blue, width: 5),
            shape: BoxShape.circle,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 200,
            height: 40,
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100))),
                  labelText: "What's on your mind ?",
                  labelStyle: TextStyle(fontSize: 12)),
            ),
          ),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.photo_library_rounded,
            color: Colors.green,
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShortcutMenu extends StatefulWidget {
  const ShortcutMenu({super.key});

  @override
  State<ShortcutMenu> createState() => _ShortcutMenuState();
}

class _ShortcutMenuState extends State<ShortcutMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 2),
      child: Column(
        children: [
          Container(
            height: 68,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  width: 60,
                  height: 60,
                ),

                Positioned(
                  left: 58,
                  top: 45,
                  child: Container(
                    child: Center(
                      child: FaIcon(FontAwesomeIcons.meta,
                          size: 10, color: Colors.white),
                    ),
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 93, 191, 240),
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                ),

                // ),
              ],
            ),
          ),
          Container(
            height: 25,
            width: 60,
            child: Text(
              "flutter shortcuts",
              style: TextStyle(fontSize: 10),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:line_icons/line_icons.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FaIcon(
          FontAwesomeIcons.home,
          color: Colors.white,
        ),
        FaIcon(
          FontAwesomeIcons.userGroup,
          color: Colors.white,
        ),
        FaIcon(
          FontAwesomeIcons.shop,
          color: Colors.white,
        ),
        FaIcon(
          FontAwesomeIcons.tv,
          color: Colors.white,
        ),
        FaIcon(
          FontAwesomeIcons.bell,
          color: Colors.white,
        ),
        FaIcon(
          FontAwesomeIcons.listUl,
          color: Colors.white,
        )
      ],
    );
  }
}

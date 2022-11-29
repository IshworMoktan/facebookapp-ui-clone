import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ViewGaming extends StatelessWidget {
  const ViewGaming({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        width: double.infinity,
        height: 350,
        color: Color.fromARGB(255, 135, 168, 225),
      ),
    );
  }
}

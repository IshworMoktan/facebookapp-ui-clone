import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

class Stories extends StatefulWidget {
  const Stories({super.key});

  @override
  State<Stories> createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  String? _stringResponse;
  Map? _mapResponse;
  Map? _dataResponse;
  List? _listResponse;

  Future _apiCall() async {
    http.Response response;
    response = await http.get(Uri.parse('https://reqres.in/api/users?page=2'));
    if (response.statusCode == 200) {
      setState(() {
        _mapResponse = json.decode(response.body);
        _listResponse = _mapResponse!['data'];
      });
    }
  }

  @override
  void initState() {
    _apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(3.0),
        child: Stack(
          children: [
            Container(
              child: Image.network(
                _listResponse![3]['avatar'],
                fit: BoxFit.contain,
              ),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              width: 100,
              height: 180,
            ),

            Positioned(
              left: 5,
              top: 5,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blueGrey,
                  border: Border.all(color: Colors.white),
                ),
              ),
            ),
            // ),
          ],
        ));
  }
}

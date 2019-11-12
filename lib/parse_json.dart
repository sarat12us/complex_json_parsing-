import 'dart:convert';
import 'dart:async';
import 'package:flutter/services.dart';
import 'Model/person.dart';
import 'package:flutter/material.dart';

class ParseJSON extends StatefulWidget {
  ParseJSON({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ParseJSON createState() => _ParseJSON();
}

class _ParseJSON extends State<ParseJSON> {

  Future <String> loadJSONfromAssets() async { 
    var key = 'json/person.json';
        return await rootBundle.loadString(key);
  }

  Future getPeople() async {

    String peopleStr = await loadJSONfromAssets();
    final jsonResponse = json.decode(peopleStr);
    Person person =  Person.fromJson(jsonResponse);
    print('name = ${person.name}');
    print('places = ${person.places}');
    print('images = ${person.images[0].name}');
    print('Address = ${person.adress.detailAdrtess.city}');

  }

  @override
  void initState() {
    super.initState();
    getPeople();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

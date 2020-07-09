import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class Worldtimeclass {
  String continent;
  String city;
  String time;
  String flag;
  Worldtimeclass({String continent, String city}) {
    this.continent = continent;
    this.city = city;
    this.flag = city;
  }
  Future<void> getTime() async {
    try {
      Response response = await get(
          'http://worldtimeapi.org/api/timezone/' + continent + '/' + city);
      Map data = jsonDecode(response.body);

      DateTime now = DateTime.parse(data['datetime']);
      now = now.add(Duration(
          hours: int.parse(data['utc_offset'].substring(1, 3)),
          minutes: int.parse(data['utc_offset'].substring(4, 6))));
      // print(now);
      // print(data['utc_offset']);
      // print(data['datetime']);
      time = DateFormat.jm().format(now);
    } catch (e) {
      print("caused error $e");
      time = "Error";
    }
  }
}

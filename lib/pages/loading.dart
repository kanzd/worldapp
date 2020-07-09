import 'package:flutter/material.dart';
import 'package:worldapp/services/worldtimeclass.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Text text = Text('Loading...');
  // getdata({String continent,String city}) async {
  //   Response response =
  //       await get('http://worldtimeapi.org/api/timezone/'+continent+'/'+city);
  //   Map data = jsonDecode(response.body);

  //   DateTime now = DateTime.parse(data['datetime']);
  //   now =
  //       now.add(Duration(hours: int.parse(data['utc_offset'].substring(1, 3)),minutes: int.parse(data['utc_offset'].substring(4,6))));
  //   print(now);
  //   // print(data['utc_offset']);
  //   // print(data['datetime']);
  //   Navigator.popAndPushNamed(context, '/home',arguments: now);
  // }
  void getdata() async {
    Worldtimeclass worldtime =
        new Worldtimeclass(continent: 'Asia', city: 'Kolkata');
    await worldtime.getTime();
    print(worldtime.time);
    Navigator.popAndPushNamed(context, '/home', arguments: {
      'continent': worldtime.continent,
      'city': worldtime.city,
      'flag': worldtime.flag,
      'time': worldtime.time,
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: SpinKitDoubleBounce(color: Colors.red[400],),)
    );
  }
}

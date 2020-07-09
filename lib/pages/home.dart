import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map args;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context).settings.arguments;
    // print(args);
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red[400],
          title: Text(
            'WorldApp',
            style: TextStyle(
                fontSize: 41, fontFamily: "cursive", color: Colors.white70),
          )),
      body: Container(
          padding: EdgeInsets.only(left: 60, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image(
                width: 220.0,
                image: AssetImage('assets/' + args['flag'].toString() + '.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Text('City : ' + args['city'].toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30.0,
                      color: Colors.red[400])),
              SizedBox(
                height: 30,
              ),
              Text(
                'Time :' + args['time'].toString(),
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30.0,
                    color: Colors.red[400]),
              ),
            ],
          )),
      backgroundColor: Colors.grey[800],
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.white,
        backgroundColor: Colors.red[400],
        onPressed: () {
            Navigator.popAndPushNamed(context, '/location',arguments:args );
        },
        child: Icon(Icons.location_on),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:worldapp/services/worldtimeclass.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  Worldtimeclass worldtime;

  Text val = Text('Choose Your Location',style: TextStyle(color:Colors.white),);
  @override
  void initState() {
    //
    super.initState();
  }

  void ondata(context, {String city, String continent}) async {
    worldtime = new Worldtimeclass(city: city, continent: continent);
    await worldtime.getTime();
    print('done');
    print(worldtime.time);
    Navigator.popAndPushNamed(context, '/home', arguments: {
      'city': worldtime.city,
      'flag': worldtime.flag,
      'time': worldtime.time,
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.redAccent[400],
        centerTitle: true,
        title: val,
      ),
      body: SingleChildScrollView(child:Container(
        padding: EdgeInsets.only(top:10,left:100),

          child:Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child:Card(
                
              child: Column(
                
                children: <Widget>[
                  Padding(padding:EdgeInsets.only(top:10),
                  child:Image(
                    
                    width: 60,
                    image: AssetImage('assets/Chicago.png'),
                  ),),
                  SizedBox(height: 10,),
                  Padding(padding:EdgeInsets.only(left:10,right: 10),child:Text("City : Chicago",style: TextStyle(color: Colors.red[400],fontSize: 20,fontWeight: FontWeight.bold),),),
                 
                  FlatButton(
                    child: Icon(Icons.location_searching),
                    onPressed: () {
                      setState(() {
                        ondata(context, city: 'Chicago', continent: 'America');
                        val = Text('Getting time.....');
                      });
                    },
                  )
                ],
              ),
            )),
            Container(
              padding: EdgeInsets.all(10),
              child:Card(
                
              child: Column(
                
                children: <Widget>[
                  Padding(padding:EdgeInsets.only(top:10),
                  child:Image(
                    
                    width: 60,
                    image: AssetImage('assets/Kolkata.png'),
                  ),),
                  SizedBox(height: 10,),
                  Padding(padding:EdgeInsets.only(left:10,right: 10),child:Text("City : Kolkata",style: TextStyle(color: Colors.red[400],fontSize: 20,fontWeight: FontWeight.bold),),),
                 
                  FlatButton(
                    child: Icon(Icons.location_searching),
                    onPressed: () {
                      setState(() {
                        ondata(context, city: 'Kolkata', continent: 'Asia');
                        val = Text('Getting time.....');
                      });
                    },
                  )
                ],
              ),
            )),
            Container(
              padding: EdgeInsets.all(10),
              child:Card(
                
              child: Column(
                
                children: <Widget>[
                  Padding(padding:EdgeInsets.only(top:10),
                  child:Image(
                    
                    width: 60,
                    image: AssetImage('assets/Shanghai.png'),
                  ),),
                  SizedBox(height: 10,),
                  Padding(padding:EdgeInsets.only(left:10,right: 10),child:Text("City : Shanghai",style: TextStyle(color: Colors.red[400],fontSize: 20,fontWeight: FontWeight.bold),),),
                 
                  FlatButton(
                    child: Icon(Icons.location_searching),
                    onPressed: () {
                      setState(() {
                        ondata(context, city: 'Shanghai', continent: 'Asia');
                        val = Text('Getting time.....');
                      });
                    },
                  )
                ],
              ),
            )),
            Container(
              padding: EdgeInsets.all(10),
              child:Card(
                
              child: Column(
                
                children: <Widget>[
                  Padding(padding:EdgeInsets.only(top:10),
                  child:Image(
                    
                    width: 60,
                    image: AssetImage('assets/Tokyo.png'),
                  ),),
                  SizedBox(height: 10,),
                  Padding(padding:EdgeInsets.only(left:10,right: 10),child:Text("City : Tokyo",style: TextStyle(color: Colors.red[400],fontSize: 20,fontWeight: FontWeight.bold),),),
                 
                  FlatButton(
                    child: Icon(Icons.location_searching),
                    onPressed: () {
                      setState(() {
                        ondata(context, city: 'Tokyo', continent: 'Asia');
                        val = Text('Getting time.....');
                      });
                    },
                  )
                ],
              ),
            )),
            Container(
              padding: EdgeInsets.all(10),
              child:Card(
                
              child: Column(
                
                children: <Widget>[
                  Padding(padding:EdgeInsets.only(top:10),
                  child:Image(
                    
                    width: 60,
                    image: AssetImage('assets/London.png'),
                  ),),
                  SizedBox(height: 10,),
                  Padding(padding:EdgeInsets.only(left:10,right: 10),child:Text("City : London",style: TextStyle(color: Colors.red[400],fontSize: 20,fontWeight: FontWeight.bold),),),
                 
                  FlatButton(
                    child: Icon(Icons.location_searching),
                    onPressed: () {
                      setState(() {
                        ondata(context, city: 'London', continent: 'Europe');
                        val = Text('Getting time.....');
                      });
                    },
                  )
                ],
              ),
            )),
            Container(
              padding: EdgeInsets.all(10),
              child:Card(
                
              child: Column(
                
                children: <Widget>[
                  Padding(padding:EdgeInsets.only(top:10),
                  child:Image(
                    
                    width: 60,
                    image: AssetImage('assets/Paris.png'),
                  ),),
                  SizedBox(height: 10,),
                  Padding(padding:EdgeInsets.only(left:10,right: 10),child:Text("City : Paris",style: TextStyle(color: Colors.red[400],fontSize: 20,fontWeight: FontWeight.bold),),),
                 
                  FlatButton(
                    child: Icon(Icons.location_searching),
                    onPressed: () {
                      setState(() {
                        ondata(context, city: 'Paris', continent: 'Europe');
                        val = Text('Getting time.....');
                      });
                    },
                  )
                ],
              ),
            )),
          ],
        )
      ),
    ));
  }
}

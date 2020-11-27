import 'package:flutter/material.dart';
import 'package:projectmandiri/detail.dart';
import 'package:projectmandiri/UrineCalculator.dart';
import 'package:projectmandiri/about.dart';

void main() {
  runApp(new MaterialApp(
    title: "Beranda",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: new AppBar(
        title: new Text("MedicalTest"),
        backgroundColor: Colors.blue[700],
      ),
      drawer: new Drawer(
        child: new ListView(children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text("Laurensia Arakian"),
            accountEmail: new Text("laurensia@undiksha.ac.id"),
            currentAccountPicture: new GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Detail(
                          nama: "Laurensia Arakian",
                        )));
              },
              child: new CircleAvatar(
                backgroundImage: AssetImage('images/ella.png'),
              ),
            ),
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: AssetImage('images/bgg.jpg'), fit: BoxFit.cover)),
          ),
          new ListTile(
            title: new Text("Cek Urine"),
            trailing: new Icon(Icons.local_hospital),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new UrineCalculatorScreen(
                        nama: "Laurensia Arakian",
                      )));
            },
          ),
          new ListTile(
            title: new Text("About"),
            trailing: new Icon(Icons.info),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => new About(
                        nama: "Laurensia Arakian",
                      )));
            },
          ),
          new ListTile(
            title: new Text("Exit"),
            trailing: new Icon(Icons.close),
          ),
        ]),
      ),
      // body: Center(
      //   child: Container(
      //     padding: EdgeInsets.all(3),
      //     child: Image.asset('images/1.png')
      //   )
      // )
      body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 400,
                    width: 400,
                    child: Image.asset(
                      "images/dr1.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "Medical Test",
                    style: TextStyle(
                        color: Colors.blueAccent[700],
                        fontSize: 34,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Cek Kualitas Urine",
                    style: TextStyle(
                        color: Colors.blueAccent[700],
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ))),
    );
  }
}

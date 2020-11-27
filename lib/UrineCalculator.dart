import 'package:projectmandiri/urinemodel.dart';
import 'package:projectmandiri/result.dart';
import 'package:flutter/material.dart';

class UrineCalculatorScreen extends StatefulWidget {
  UrineCalculatorScreen({this.nama});
  final String nama;
  @override
  _UrineCalculatorScreenState createState() => _UrineCalculatorScreenState();
}

class _UrineCalculatorScreenState extends State<UrineCalculatorScreen> {
  double _water = 1;
  double _urine = 0;

  urinemodel _urinemodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                child: Image.asset(
                  "images/sehat.jpg",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "KUALITAS URINE",
                style: TextStyle(
                    color: Colors.blue[700],
                    fontSize: 34,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Lets try for your health",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "Jumlah Gelas Perhari (gelas)",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Slider(
                  min: 1,
                  max: 20,
                  onChanged: (water) {
                    setState(() {
                      _water = water;
                    });
                  },
                  value: _water,
                  divisions: 19,
                  activeColor: Colors.blue,
                  label: "$_water",
                ),
              ),
              Text(
                "$_water gelas",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                child: FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      _urine = _water + 0;

                      if (_urine >= 8) {
                        _urinemodel = urinemodel(
                            urine: _urine,
                            isNormal: true,
                            comments: "Kualitas Urine Baik");
                      } else if (_urine >= 4 && _urine < 8) {
                        _urinemodel = urinemodel(
                            urine: _urine,
                            isNormal: false,
                            comments: "Kualitas Urine Buruk");
                      } else {
                        _urinemodel = urinemodel(
                            urine: _urine,
                            isNormal: false,
                            comments: "ANDA DEHIDRASI!!");
                      }
                    });

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Result(
                                  urinemodel: _urinemodel,
                                )));
                  },
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  label: Text("CEK KUALITAS"),
                  textColor: Colors.white,
                  color: Colors.blue,
                ),
                width: double.infinity,
                padding: EdgeInsets.only(left: 16, right: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:projectmandiri/urinemodel.dart';

class Result extends StatelessWidget {
  final urinemodel;

  Result({this.urinemodel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'WARNA URINE ANDA',
            style: TextStyle(
                color: Colors.blue[700],
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 15),
          Container(
            height: 200,
            width: 200,
            child: urinemodel.isNormal
                ? Image.asset(
                    "images/urinetes2.png",
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    "images/urinetes.png",
                    fit: BoxFit.contain,
                  ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "${urinemodel.urine.round()} gelas sehari",
            style: TextStyle(
                color: Colors.blueAccent[700],
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "${urinemodel.comments}",
            style: TextStyle(
                color: Colors.blue[700],
                fontSize: 28,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16,
          ),
          urinemodel.isNormal
              ? Text(
                  "Kualitas Urine Normal",
                  style: TextStyle(
                      color: Colors.blue[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                )
              : Text(
                  "Kualitas Urine Tidak Normal.",
                  style: TextStyle(
                      color: Colors.blue[700],
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
          SizedBox(
            height: 16,
          ),
          Container(
            child: FlatButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              label: Text("CEK KEMBALI"),
              textColor: Colors.white,
              color: Colors.blue,
            ),
            width: double.infinity,
            padding: EdgeInsets.only(left: 16, right: 16),
          )
        ],
      ),
    ));
  }
}

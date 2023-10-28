import 'dart:ui';

import 'package:flutter/material.dart';
import '/screens/SenaraiKenderaan.dart';
import '/screens/DaftarKenderaan.dart';
import '/screens/DaftarPemandu.dart';
import '/screens/SenaraiPemandu.dart';
import '/screens/DaftarStaff.dart';
import '/screens/SenaraiStaff.dart';

class HomePage extends StatelessWidget {

  var services = [
    "DAFTAR KENDERAAN",
    "SENARAI KENDERAAN",
    "DAFTAR PEMANDU",
    "SENARAI PEMANDU",
    "DAFTAR STAFF",
    "SENARAI STAFF",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: services.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
        ),
      itemBuilder: (BuildContext context, index) {
        return GestureDetector( 
          onTap: () {
            if (services[index] == "DAFTAR KENDERAAN") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DaftarKenderaan()),
              );
            } else if (services[index] == "SENARAI KENDERAAN") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SenaraiKenderaan()),
              );
            } else if (services[index] == "DAFTAR PEMANDU") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DaftarPemandu()),
              );
            } else if (services[index] == "SENARAI PEMANDU") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SenaraiPemandu()),
              );
            } else if (services[index] == "DAFTAR STAFF") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DaftarStaff()), // Navigate to DaftarStaff when tapped
              );
            } else if (services[index] == "SENARAI STAFF") {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SenaraiStaff()), // Navigate to SenaraiStaff when tapped
              );
            }
          },
          child: Card(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  services[index] == "DAFTAR KENDERAAN" || services[index] == "SENARAI KENDERAAN"
                    ? "images/171239.png"
                    : services[index] == "DAFTAR PEMANDU" || services[index] == "SENARAI PEMANDU"
                      ? "images/User_icon-cp.png"
                      : "images/5064889.png", 
                  height: 80, 
                  width: 80,
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(services[index], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center,), 
                )
              ],
            ),
          ),
        );
      }
    );
  }
}

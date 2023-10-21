import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  var _myFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTRATION FORM"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: Form(
          key: _myFormKey,
          child: SingleChildScrollView(
            child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String? msg) {
                    if (msg == null || msg.isEmpty) {
                      return "Please enter name";
                    }
                    if (msg.length < 3) {
                      return "name is less then 3 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Enter Your Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String? msg) {
                    if (msg == null || msg.isEmpty) {
                      return "Please enter Position";
                    }
                    if (msg.length < 3) {
                      return "information is less then 3 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Position",
                    hintText: "Enter Your Position",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String? msg) {
                    if (msg == null || msg.isEmpty) {
                      return "Please enter Section";
                    }
                    if (msg.length < 3) {
                      return "information is less then 3 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Section",
                    hintText: "Enter Your Section",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String? msg) {
                    if (msg == null || msg.isEmpty) {
                      return "Please enter your affairs";
                    }
                    if (msg.length < 3) {
                      return "information is less then 3 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Affairs",
                    hintText: "Enter Your affairs",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Information About Your Trip',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'a) Leave',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String? msg) {
                    if (msg == null || msg.isEmpty) {
                      return "Please enter your Date";
                    }
                    if (msg.length < 3) {
                      return "information is less then 3 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Date",
                    hintText: "Enter Your Date",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String? msg) {
                    if (msg == null || msg.isEmpty) {
                      return "Please enter the time of your Leaving Time";
                    }
                    if (msg.length < 3) {
                      return "name is less then 3 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Leaving Time",
                    hintText: "morning/evening/night",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String? msg) {
                    if (msg == null || msg.isEmpty) {
                      return "Please enter the time of your Type of vehicle";
                    }
                    if (msg.length < 3) {
                      return "name is less then 3 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Type Of Vehicle",
                    hintText: "Enter Your Type Of Vehicle",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'b) Return',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String? msg) {
                    if (msg == null || msg.isEmpty) {
                      return "Please enter your Date";
                    }
                    if (msg.length < 3) {
                      return "information is less then 3 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Date",
                    hintText: "Enter Your Date",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String? msg) {
                    if (msg == null || msg.isEmpty) {
                      return "Please enter the time of your Leaving Time";
                    }
                    if (msg.length < 3) {
                      return "name is less then 3 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Leaving Time",
                    hintText: "morning/evening/night",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String? msg) {
                    if (msg == null || msg.isEmpty) {
                      return "Please enter the time of your Type of vehicle";
                    }
                    if (msg.length < 3) {
                      return "name is less then 3 characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Type Of Vehicle",
                    hintText: "Enter Your Type Of Vehicle",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      )
          
      ),
      floatingActionButton:
          FloatingActionButton(child:
            Icon(Icons.done), onPressed:
            () { _myFormKey.currentState?.validate(); },
          ),
    );
  }
}

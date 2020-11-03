import 'package:flutter/material.dart';

class Assignments extends StatefulWidget {
  _Assignments createState() => _Assignments();
}

class _Assignments extends State<Assignments> {
  List<String> subjects = [
    "Maths",
    "Pyhsics",
    "Social",
    "English",
    "Sanskrit",
    "Telugu"
  ];
  int selected = 0;
  List<String> Maths = [
    "Assignment1",
    "Assignment2",
    "Assignment3",
    "Assignment4",
  ];
  List<String> Pyhsics = [
    "Assignment1",
    "Assignment2",
    "Assignment3",
    "Assignment4",
  ];
  List<String> Social = [
    "Assignment1",
    "Assignment2",
    "Assignment3",
    "Assignment4",
  ];
  List<String> English = [
    "Assignment1",
    "Assignment2",
    "Assignment3",
    "Assignment4",
  ];
  List<String> Sanskrit = [
    "Assignment1",
    "Assignment2",
    "Assignment3",
    "Assignment4",
  ];
  List<String> Telugu = [
    "Assignment1",
    "Assignment2",
    "Assignment3",
    "Assignment4",
  ];
  Color color = Color.fromRGBO(255, 255, 255, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignments"),
        backgroundColor: Color.fromRGBO(143, 148, 251, 0.9),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                GestureDetector(
                  //Color color,

                  onTap: () {
                    color = Color.fromRGBO(143, 148, 251, 0.9);
                    selected = 0;
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: color,
                    ),
                    //color: ,
                    child: Text(subjects[0]),
                  ),
                ),
                GestureDetector(
                  //Color color,

                  onTap: () {
                    color = Color.fromRGBO(143, 148, 251, 0.9);
                    selected = 1;
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: color,
                    ),
                    //color: ,
                    child: Text(subjects[1]),
                  ),
                ),
                GestureDetector(
                  //Color color,

                  onTap: () {
                    color = Color.fromRGBO(143, 148, 251, 0.9);
                    selected = 2;
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: color,
                    ),
                    //color: ,
                    child: Text(subjects[2]),
                  ),
                ),
                GestureDetector(
                  //Color color,

                  onTap: () {
                    color = Color.fromRGBO(143, 148, 251, 0.9);
                    selected = 3;
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: color,
                    ),
                    //color: ,
                    child: Text(subjects[3]),
                  ),
                ),
                GestureDetector(
                  //Color color,

                  onTap: () {
                    color = Color.fromRGBO(143, 148, 251, 0.9);
                    selected = 4;
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: color,
                    ),
                    //color: ,
                    child: Text(subjects[4]),
                  ),
                ),
                GestureDetector(
                  //Color color,

                  onTap: () {
                    color = Color.fromRGBO(143, 148, 251, 0.9);
                    selected = 5;
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: color,
                    ),
                    //color: ,
                    child: Text(subjects[5]),
                  ),
                ),
              ],
            ),
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                ListTile(
                  // String name = subjects[selected];
                  title: assign(0),
                ),
                ListTile(
                  // String name = subjects[selected];
                  title: assign(1),
                ),
                ListTile(
                  // String name = subjects[selected];
                  title: assign(2),
                ),
                ListTile(
                  // String name = subjects[selected];
                  title: assign(3),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget assign(int index) {
    String name = subjects[selected];
    String assignname = name[index];
    return Text(assignname);
  }
}

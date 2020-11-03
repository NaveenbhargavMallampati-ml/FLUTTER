import 'package:flutter/material.dart';
import 'package:school_system/MyHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyHome createState() {
    return _MyHome();
  }
}

class _MyHome extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Color.fromRGBO(143, 148, 251, 0.9),
      title: "School Monitor",
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Text("Menu"),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(143, 148, 251, 0.9),
                ),
              ),
              ListTile(
                title: Text("Profile"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Subjects"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("LogOut"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('DashBoard'),
          backgroundColor: Color.fromRGBO(143, 148, 251, 0.9),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.cached,
                  color: Colors.white70,
                  size: 30.0,
                ),
                onPressed: null)
          ],
        ),
        body: HomePage(),
      ),
    );
  }
}

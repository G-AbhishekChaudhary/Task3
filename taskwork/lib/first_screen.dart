import 'package:flutter/material.dart';
import 'package:taskwork/login.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Global.dart' as globaldata;
import 'package:taskwork/main.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Container(height: 200, color: Colors.green)),
            ListTile(
              title: Text("Log in"),
              leading: Icon(Icons.login),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginDemo();
                }));
              },
            ),
            ListTile(
              title: Text("Log out"),
              leading: Icon(Icons.logout),
            ),
            ListTile(
              title: Text("Updates"),
              leading: Icon(Icons.ac_unit),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Welcome ${globaldata.global} "),
        actions: [
          InkWell(
            child: Icon(Icons.login, size: 50, color: Colors.red),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginDemo();
              }));
            },
          ),
          InkWell(
              child: Icon(Icons.web, size: 50, color: Colors.red),
              onTap: () {
                return launch("https://www.google.com/");
              }),
        ],
      ),
      body: Center(
        child: Text(
          "Home page",
          textScaleFactor: 2,
        ),
      ),
    );
  }
}

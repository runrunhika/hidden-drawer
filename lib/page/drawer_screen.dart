import 'package:flutter/material.dart';
import 'package:hidden_drawer_sample/page/home_screen.dart';

class DrowerScreen extends StatefulWidget {
  @override
  DowerScreenState createState() => DowerScreenState();
}

class DowerScreenState extends State<DrowerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                CircleAvatar(),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) => HomePage()));
                        },
                        child: Text(
                          "Menu",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ))),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => HomePage()));
              },
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => HomePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

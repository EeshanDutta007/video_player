import 'package:animation_test/Login.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'HomePage.dart';

List<String> thumbnails = [];
void main(){
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CalendarController _controller = CalendarController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.yellow,
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                    onPressed: () async {
                      //await getDetails();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    },
                    child: Text('Home Page'))
              ],
            ),
          )),
    );
  }
}


Widget _showAlertDialog(BuildContext context) {
  return Container(
    child: AlertDialog(
      title: Text("Error"),
      content: Text("Please enter all the details"),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Ok"),
        ),
      ],
      elevation: 10,
    ),
  );
}

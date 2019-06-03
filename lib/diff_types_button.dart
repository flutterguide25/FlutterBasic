import 'package:flutter/material.dart';

class DiffButton extends StatefulWidget {
  DiffButton({Key key}) : super(key: key);

  _DiffButtonState createState() => _DiffButtonState();
}

class _DiffButtonState extends State<DiffButton> {
  var dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text("Diffrent types of button"),
      ),
      backgroundColor: Colors.pink[50],
      body: Container(
          child: Padding(
        padding: const EdgeInsets.only(right: 10.0, left: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 5.0,
            ),
            FlatButton(
                splashColor: Colors.red[300],
                child: Text('FlatButton'),
                onPressed: () {
                  print("FlatButton is clicked");
                }),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            RaisedButton(
              color: Colors.red[300],
              child: Text('RaisedButton'),
              onPressed: () {
                print("RaisedButton is clicked");
              },
              splashColor: Colors.red[600],
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            FloatingActionButton(
                backgroundColor: Colors.red[300],
                child: Icon(Icons.adb),
                onPressed: () {
                  print("icon button is clicked");
                }),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            FloatingActionButton.extended(
                icon: Icon(Icons.add),
                backgroundColor: Colors.red[300],
                label: Text('Extended'),
                onPressed: () {
                  print("floaring action button is clicked");
                }),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            IconButton(
                icon: Icon(
                  Icons.location_on,
                  color: Colors.red[300],
                ),
                tooltip: 'location',
                onPressed: () {
                  print("icon button is clicked");
                }),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            InkWell(
              onTap: () {
                print("inkwell is clicked");
              },
              child: Text("https://github.com/flutterguide25/FlutterBasics.git",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                      decoration: TextDecoration.underline)),
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              height: 5.0,
            ),
            GestureDetector(
              onTap: () {
                print("gesturedetector is clicked");
              },
              child: Text("https://github.com/flutterguide25/FlutterBasics.git",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                      decoration: TextDecoration.underline)),
            ),
            SizedBox(
              height: 10.0,
            ),
            DropdownButton<String>(
              value: dropdownValue,
              onChanged: (String newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      )),
    );
  }
}

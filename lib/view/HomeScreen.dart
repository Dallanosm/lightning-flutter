import 'package:Lightning_talk/di/DI.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              minWidth: 200.0,
              child: RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () => {_firstRequest()},
                child: Text("Primera petición"),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12),
              child: ButtonTheme(
                minWidth: 200.0,
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () => {_secondRequest()},
                  child: Text("Segunda petición"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _firstRequest() async {
    var talks = await DI.repository.getTalks();
    print(talks);
  }

  void _secondRequest() async {
    var eventInfo = await DI.repository.getEventInfo();
    print(eventInfo);
  }
}

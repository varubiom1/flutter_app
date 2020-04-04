import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/ButtonSection.dart';
import 'package:flutterapp/Container.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  }

  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return MaterialApp(
      title: 'ICARUS',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ICARUS'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'Images/icaro1.jpg',
              width:600,
              height:240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            ],
        ),
      ),
    );
  }

}

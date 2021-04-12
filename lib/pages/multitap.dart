import 'package:flutter/material.dart';
import '../utilities/tap_circles.dart';

void main() => runApp(MaterialApp(
      home: FingerChooser(),
    ));

// The StatefulWidget's job is to take data and create a State class.
// In this case, the widget takes a title, and creates a _MultiTapState.
class MultiTap extends StatefulWidget {
  final String title;

  MultiTap({Key key, this.title}) : super(key: key);

  @override
  _MultiTapState createState() => _MultiTapState();
}

// The State class is responsible for two things: holding some data you can
// update and building the UI using that data.
class _MultiTapState extends State<MultiTap> {
  double _width = 100;
  double _height = 100;
  double _borderRadius = 30;
  Color color = Colors.blue;
  Duration _duration = new Duration(seconds: 10);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          print("Tap Detectd");
          setState(() {
            _width = 20;
            _height = 20;
          });
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => FingerChooser()));
        },
        child: Center(
            child: AnimatedContainer(
          curve: Curves.bounceIn,
          duration: _duration,
          width: _width,
          height: _height,
//          color: color,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
          ),
          child: Center(child: Text("Começar", style: TextStyle(fontSize: 20))),
        )),
      ),
    );
  }
}

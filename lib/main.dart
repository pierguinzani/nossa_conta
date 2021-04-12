import 'package:flutter/material.dart';
import 'package:nossaconta/pages/home_page.dart';
import 'package:nossaconta/pages/multitap.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nossa Conta',
      debugShowCheckedModeBanner: false,
      //home: MultiTap(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/multitap': (context) => MultiTap(),
      },
    );
  }
}
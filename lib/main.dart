import 'package:flutter/material.dart';
import 'package:nossaconta/pages/fingers_page.dart';
import 'package:nossaconta/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nossa Conta',
      debugShowCheckedModeBanner: false,
      home: Multitap(),
    );
  }
}

import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Colors.black38,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xc1c1c1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.white,
      blurRadius: 1.0,
      offset: Offset(0, 2),
    ),
  ],
);
import 'package:flutter/material.dart';
import 'package:food_app/pages/first_page.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const QRViewExample(),
    ));

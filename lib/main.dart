import 'package:example_app/pages/home_page.dart';
import 'package:example_app/pages/init_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: InitPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
    ),
  );
}

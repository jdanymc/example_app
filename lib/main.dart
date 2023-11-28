import 'package:example_app/pages/future_page.dart';
import 'package:example_app/pages/init_page.dart';
import 'package:example_app/pages/main_page.dart';
import 'package:example_app/pages/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      // home: const InitPage(),
      // home: MainPage(),
      //home: FuturePage(),
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}

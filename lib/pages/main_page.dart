import 'package:example_app/pages/device_page.dart';
import 'package:example_app/pages/future_page.dart';
import 'package:example_app/pages/home_page.dart';
import 'package:example_app/pages/init_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ejemplo de Tab Bar"),
          bottom: TabBar(
            tabs: [
              Tab(
                text: "screen1",
              ),
              Tab(
                text: "screen2",
              ),
              Tab(
                text: "screen3",
              ),
              Tab(
                text: "screen4",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child:
                  //Text("ESTA ES LA PANTALLA 1"),
                  FuturePage(),
              //     Center(
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //           builder: (context) => FuturePage(),
              //         ),
              //       );
              //     },
              //     child: Text("goo"),
              //   ),
              // ),
            ),
            // Center(
            //   child: Text("ESTA ES LA PANTALLA 2"),
            // ),
            InitPage(),
            HomePage(),
            DevicePage(),
          ],
        ),
      ),
    );
  }
}

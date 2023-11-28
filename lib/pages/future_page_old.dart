import 'package:flutter/material.dart';

class FuturePage extends StatefulWidget {
  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String title = "Hola a todos";

  String message() {
    return "Saludando por una función";
  }

  Future<String> message2() async {
    return Future.delayed(Duration(seconds: 4), () {
      return "Hola soy un future";
    });
  }

  mensaje() async {
    String aux = await message2();
    title = aux;
  }

  Future getInfo() async {
    title = await message2();
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // forma1 obteniebdo el valor del Future
    // message2().then((value) {
    //   print(value);
    //   title = value;
    //   setState(() {});
    // });

    // forma 2
    getInfo();
  }

  @override
  Widget build(BuildContext context) {
    // mensaje();
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(
        //     "Futures",
        //   ),
        // ),
        body: Center(
          child: Text(
            maxLines: 4,
            title,
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}

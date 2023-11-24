import 'package:example_app/models/espacio.dart';
import 'package:flutter/material.dart';

class SpacePage extends StatefulWidget {
  Espacio space;
  SpacePage({required this.space});

  @override
  State<SpacePage> createState() => _SpacePageState();
}

class _SpacePageState extends State<SpacePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Navicury",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
          child: Column(children: [
            const Text(
              "Espacio:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: const Border(top: BorderSide.none),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 5),
                        blurRadius: 5),
                  ]),
              child: Center(
                child: Text(
                  widget.space.nombre,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900,
                      fontSize: 200),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Ajustar",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Luz",
                    textAlign: TextAlign.start,
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 2,
                    inactiveTrackColor: Colors.blue.shade900,
                    trackShape: const RectangularSliderTrackShape(),
                  ),
                  child: Slider(
                    activeColor: Colors.blue.shade900,
                    value: widget.space.valorFoco1.toDouble(),
                    max: 100,
                    onChanged: (val) {
                      widget.space.valorFoco1 = val.toInt();
                      setState(() {});
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text("0"),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          widget.space.valorFoco1.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: const Text("100"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Luz",
                    textAlign: TextAlign.start,
                  ),
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 2,
                    inactiveTrackColor: Colors.blue.shade900,
                    trackShape: const RectangularSliderTrackShape(),
                  ),
                  child: Slider(
                    activeColor: Colors.blue.shade900,
                    value: widget.space.valorFoco2.toDouble(),
                    max: 100,
                    onChanged: (val) {
                      widget.space.valorFoco2 = val.toInt();
                      setState(() {});
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: const Text("0"),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          widget.space.valorFoco2.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        right: 20,
                      ),
                      child: const Text("100"),
                    ),
                  ],
                )
              ]),
            )
          ]),
        ),
      ),
    );
  }
}

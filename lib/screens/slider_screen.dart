import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  bool _value = false;
  double val = 1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Ejemplo", icon: Icon(Icons.fact_check)),
              Tab(text: "codigo", icon: Icon(Icons.code)),
            ],
          ),
          title: Text('Flutter Slider'),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Slider(
                    value: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                    min: 0,
                    max: 10,
                    activeColor: Colors.pink,
                    inactiveColor: Colors.green[100],
                    label: val.round().toString(),
                    divisions: 10,
                  )
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Slider.jpeg'),
                  Text("Codigo"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});
  _RadioScreenState createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  int val = 1;

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
          title: Text('Flutter Radio Button'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                ListTile(
                  title: Text("Masculino"),
                  leading: Radio(
                    value: 1,
                    groupValue: val,
                    onChanged: (int? value) {
                      setState(() {
                        val = value!;
                      });
                    },
                    activeColor: Color(0xffe36e9f),
                  ),
                ),
                ListTile(
                  title: Text("Femenino"),
                  leading: Radio(
                    value: 2,
                    groupValue: val,
                    onChanged: (int? value) {
                      setState(
                        () {
                          val = value!;
                        },
                      );
                    },
                    activeColor: Color(0xffe36e9f),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/radiobutton.jpeg'),
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

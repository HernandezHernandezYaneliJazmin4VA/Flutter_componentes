import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class LinearProgressScreen extends StatefulWidget {
  const LinearProgressScreen({super.key});
  _LinearProgressScreenState createState() => _LinearProgressScreenState();
}

class _LinearProgressScreenState extends State<LinearProgressScreen> {
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
          title: Text('Flutter Linear Progress'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.pink,
                    child: LinearProgressIndicator()),
                Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.pink,
                    child: LinearProgressIndicator(
                      value: 0.7,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.pink,
                    child: LinearProgressIndicator(
                      value: 0.7,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(AppTheme.primary),
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.pink,
                    child: LinearProgressIndicator(
                      value: 0.7,
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(AppTheme.primary),
                      backgroundColor: Colors.grey,
                    )),
                Container(
                    margin: const EdgeInsets.all(10),
                    color: Colors.pink,
                    child: LinearProgressIndicator(
                      value: 0.7,
                      backgroundColor: Colors.grey,
                      color: AppTheme.primary,
                      minHeight: 10,
                    )),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/LinearProgress.jpeg'),
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

import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class textbuttonScreen extends StatefulWidget {
  const textbuttonScreen({super.key});
  _textbuttonScreenState createState() => _textbuttonScreenState();
}

class _textbuttonScreenState extends State<textbuttonScreen> {
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
          title: Text('Flutter Text Button'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(30),
              children: <Widget>[
                TextButton(
                  child: Text("Button"),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.pink,
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("Button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Color(0xffe07a9d),
                    onSurface: Colors.black,
                  ),
                  onPressed: null,
                ),
                TextButton(
                  child: Text("button"),
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pink),
                    overlayColor:
                        MaterialStateProperty.all<Color>(Color(0xff66142f)),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.pink,
                      side: BorderSide(color: Color(0xff66142f), width: 1)),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.pink,
                    side: BorderSide(color: Color(0xff66142f), width: 1),
                    elevation: 20,
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.pink,
                    side: BorderSide(color: Color(0xff66142f), width: 1),
                    elevation: 20,
                    minimumSize: Size(100, 50),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.pink,
                    side: BorderSide(color: Color(0xff66142f), width: 1),
                    elevation: 20,
                    minimumSize: Size(100, 50),
                    shadowColor: Colors.red,
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.pink,
                    side: BorderSide(color: Color(0xff66142f), width: 1),
                    elevation: 20,
                    minimumSize: Size(100, 50),
                    shadowColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.pink,
                    side: BorderSide(color: Color(0xff66142f), width: 1),
                    elevation: 30,
                    minimumSize: Size(100, 70),
                    shadowColor: Colors.red,
                    shape: CircleBorder(),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("button"),
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.pink,
                      side: BorderSide(color: Color(0xff66142f), width: 1),
                      elevation: 20,
                      minimumSize: Size(100, 50),
                      shadowColor: Colors.red,
                      padding: EdgeInsets.only(
                          left: 60, right: 60, top: 15, bottom: 15)),
                  onPressed: () {},
                ),
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

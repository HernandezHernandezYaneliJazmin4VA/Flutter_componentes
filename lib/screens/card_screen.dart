import 'package:flutter/material.dart';
import 'package:fluttercomponentes/theme/app_theme.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
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
          title: Text('Flutter Card'),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.all(10),
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                      title: Text(
                        "Tarjeta con fondo",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: AppTheme.primary,
                  ),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Card(
                        child: ListTile(
                          title: Text("Tarjeta elevada"),
                        ),
                        elevation: 8,
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Card(
                        child: ListTile(
                          title: Text("Tarjeta con sombra"),
                        ),
                        elevation: 8,
                        shadowColor: AppTheme.primary,
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Card(
                        child: ListTile(
                          title: Text("Tarjeta con diferente forma"),
                        ),
                        elevation: 8,
                        shadowColor: AppTheme.primary,
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Card(
                        child: ListTile(
                          //leading: Icon(Icons.music_note),
                          title: Text("Tarjeta con margen"),
                        ),
                        elevation: 8,
                        shadowColor: AppTheme.primary,
                        margin: EdgeInsets.all(20),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Container(
                        height: 200,
                        width: 200,
                        child: Card(
                          child: ListTile(
                            title: Text("Tarjeta con alto y ancho"),
                          ),
                          elevation: 8,
                          shadowColor: AppTheme.primary,
                          margin: EdgeInsets.all(20),
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Card(
                        child: ListTile(
                          title: Text("Tarjeta con borde circular"),
                        ),
                        elevation: 8,
                        shadowColor: AppTheme.primary,
                        margin: EdgeInsets.all(20),
                        shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)),
                      )),
                  Container(
                      margin: const EdgeInsets.all(10),
                      child: Card(
                        child: Container(
                          height: 160,
                          width: 160,
                          child: Center(
                            child: ListTile(
                              title: Text("Tarjeta circular"),
                            ),
                          ),
                        ),
                        elevation: 8,
                        shadowColor: AppTheme.primary,
                        margin: EdgeInsets.all(20),
                        shape: CircleBorder(
                          side: BorderSide(width: 1, color: Colors.white),
                        ),
                      )),
                ]),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Card.jpeg'),
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
